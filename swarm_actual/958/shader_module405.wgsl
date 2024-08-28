struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<u32, 26> = array<u32, 26>(6271u, 76049u, 4294967295u, 3797u, 29006u, 0u, 4294967295u, 0u, 41319u, 40508u, 0u, 0u, 4294967295u, 0u, 4294967295u, 1u, 58508u, 1u, 4294967295u, 0u, 4294967295u, 4294967295u, 0u, 4294967295u, 1u, 43174u);

var<private> global2: Struct_5 = Struct_5(false);

var<private> global3: array<Struct_2, 6>;

var<private> global4: Struct_4 = Struct_4(26814u, -1381f, 430f, vec2<f32>(-231f, -1625f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> f32 {
    global0 = array<Struct_4, 30>();
    global1 = array<u32, 26>();
    global4 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 40782u, 40874u), 48165u, _wgslsmith_mod_u32(4294967295u, global4.a)), abs(vec3<u32>(global4.a, global1[_wgslsmith_index_u32(1u, 26u)], global4.a))) | global4.a, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-global4.c)), 267f, vec2<f32>(-1228f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_f32(arg_2 * 533f)))));
    var var_0 = u_input.d;
    let var_1 = any(select(vec4<bool>(all(vec4<bool>(global2.a, global2.a, true, false)) && (global4.a != 46353u), select(!global2.a, any(vec3<bool>(false, false, false)), true), false, true), !select(select(vec4<bool>(global2.a, global2.a, false, false), vec4<bool>(true, true, global2.a, global2.a), vec4<bool>(true, false, global2.a, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(global2.a, global2.a, false, false), global2.a), !global2.a), vec4<bool>(all(!vec3<bool>(global2.a, true, global2.a)), true & (global4.d.x > -1000f), false, -63792i > arg_1)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.c - arg_2), _wgslsmith_f_op_f32(f32(-1f) * -505f)))))) - _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -819f), !global2.a)));
}

fn func_2() -> Struct_4 {
    let var_0 = global4.c;
    global2 = Struct_5(global2.a);
    global2 = Struct_5(true);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -746f);
    return Struct_4(u_input.b.x, 515f, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1572f, var_1, 611f, -130f) - vec4<f32>(-770f, var_1, global4.b, global4.c))), vec4<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(ceil(global4.d.x)), var_1, var_1)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 22906i), vec3<i32>(5049i, 9033i, 10774i)), ~(-9051i)), -1183f)), global4.d);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = !select(vec2<bool>(global2.a, !select(false, false, global2.a)), !(!select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, true), true)), select(!(!vec2<bool>(global2.a, global2.a)), select(!vec2<bool>(global2.a, global2.a), !vec2<bool>(false, global2.a), true), select(select(vec2<bool>(true, global2.a), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(global2.a, global2.a), global2.a)));
    var var_1 = Struct_5(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, 2147483647i, arg_1.x), vec4<i32>(arg_3.x, arg_1.x, arg_1.x, arg_1.x)), ~(-2147483647i)) <= 4978i);
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u), 30u)];
    return vec2<bool>(false, any(!(!vec4<bool>(false, true, var_0.x, var_1.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.d) + global4.d))))));
    var var_1 = Struct_5(false);
    var var_2 = func_4(_wgslsmith_div_u32(u_input.d.x >> (global1[_wgslsmith_index_u32(~(~1u), 26u)] % 32u), global4.a), reverseBits(arg_2.xz), func_2(), firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(-21161i, -17292i, arg_2.x, arg_2.x), vec4<i32>(-23613i, -12167i, -1i, arg_2.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c, -135f, arg_3, -984f) * vec4<f32>(arg_0.x, 469f, -652f, arg_3))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(272f, -508f, -100f, arg_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) + var_0.x), global4.d.x, -627f, _wgslsmith_f_op_f32(f32(-1f) * -1174f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, var_0.x, -445f, 2355f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1859f, 1095f, arg_0.x, var_0.x)))))));
    global0 = array<Struct_4, 30>();
    return select(!select(!vec3<bool>(var_1.a, false, true), vec3<bool>(true, true, true), var_1.a), select(vec3<bool>(var_2.x, false, -327f >= var_0.x), !(!(!vec3<bool>(true, global2.a, true))), !select(true, global2.a, true) && all(vec3<bool>(true, arg_1, false))), !(global4.a == 31240u));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_5(!all(vec4<bool>(true, 93599u != u_input.c, global2.a, func_4(global1[_wgslsmith_index_u32(1u, 26u)], vec2<i32>(3387i, -1i), Struct_4(33287u, arg_1.x, 397f, arg_1), vec4<i32>(61631i, -34387i, 31705i, -2147483647i)).x)));
    let var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)];
    let var_2 = select(func_4(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.b.xz, u_input.a.zz), u_input.d.xx), 26u)], countOneBits(vec2<i32>(i32(-1i) * -2534i, 0i)), Struct_4(global4.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1610f - 607f), _wgslsmith_div_f32(global4.d.x, -636f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-213f, var_1.c.a.x), -535f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.b.x, 1133f))), select(vec4<i32>(1i, 1i, 1i, 1i), -abs(vec4<i32>(0i, -49561i, -82251i, -1714i)), !select(vec4<bool>(arg_0.x, true, var_0.a, var_0.a), vec4<bool>(true, true, global2.a, true), vec4<bool>(global2.a, true, false, var_0.a)))), func_4(79455u, vec2<i32>(1i, 1i), Struct_4(~(~global4.a), _wgslsmith_div_f32(-191f, _wgslsmith_f_op_f32(931f - global4.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(1198f, var_1.a), _wgslsmith_div_f32(376f, arg_1.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2137f, arg_2))))), ~vec4<i32>(1i, min(0i, 36566i), 1i, -1i)), var_0.a);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, abs(~(-2147483647i)), 28576i, ~(i32(-1i) * -85477i)), select(-vec4<i32>(19948i, -2147483647i, -2147483647i, 0i), abs(vec4<i32>(32995i, -1i, -2147483647i, -2147483647i) << (vec4<u32>(var_1.b.x, var_1.b.x, u_input.b.x, global4.a) % vec4<u32>(32u))), !(!vec4<bool>(global2.a, var_2.x, false, global2.a)))), -5668i ^ ~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 4117i, 26577i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(25384i, 17562i, 1i, -10929i), vec4<i32>(0i, 2026i, 1i, 2147483647i), vec4<i32>(-11004i, 21274i, 0i, 0i))));
    let var_4 = global4.a;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, -117f)))), var_1.b, var_1.e, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(103f)), _wgslsmith_f_op_f32(arg_2 * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) - _wgslsmith_f_op_f32(1000f + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1.c, var_3, 1351f)) * -1118f)), _wgslsmith_f_op_vec4_f32(select(var_1.e.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, global4.b, 778f, var_1.e.b.x) - vec4<f32>(1235f, arg_2, -1188f, var_1.c.a.x)) - var_1.c.a), select(!vec4<bool>(var_0.a, false, true, true), !vec4<bool>(var_2.x, false, arg_0.x, false), var_1.b.x >= 23738u)))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i >> (u_input.a.x % 32u), ~30446i), ~_wgslsmith_mult_i32(-1i, 1i)), -(i32(-1i) * -2147483647i));
    var var_1 = func_5(select(!vec3<bool>(global4.d.x > global4.d.x, all(vec2<bool>(global2.a, true)), global2.a), !select(func_1(vec3<f32>(-2259f, global4.d.x, 260f), true, vec3<i32>(var_0, 0i, -2147483647i), -889f), select(vec3<bool>(global2.a, global2.a, false), vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, global2.a, global2.a)), !global2.a), global2.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.d - global4.d) + _wgslsmith_div_vec2_f32(global4.d, vec2<f32>(1000f, 380f))))))), _wgslsmith_f_op_f32(-global4.d.x));
    var var_2 = Struct_2(global4.d.x, ~(~u_input.d.wyw), var_1.d, func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(-global4.d.x), -634f, -233f), global2.a, select(select(vec3<i32>(-34296i, var_0, 1i), vec3<i32>(var_0, 2147483647i, 1i), global2.a), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-76444i, var_0, var_0)), select(vec3<bool>(global2.a, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), -876f), _wgslsmith_f_op_vec2_f32(max(var_1.c.a.wz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.d.x, global4.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2489f, global4.d.x)), false)))), _wgslsmith_f_op_f32(-var_1.a)).e, func_5(func_1(var_1.d.b.yxy, !global2.a && !global2.a, vec3<i32>(abs(1i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(47817i, -2147483647i))), _wgslsmith_f_op_f32(-var_1.c.a.x)), global4.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(-var_1.d.a.x))))).d);
    var var_3 = select(global2.a, false, any(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.e.a.x, var_1.e.b.x)), global4.a >= abs(4294967295u), vec3<i32>(reverseBits(2147483647i), -var_0, _wgslsmith_mult_i32(21631i, var_0)), var_2.c.a.x).zy));
    let var_4 = var_1.e.b.zyz;
    let var_5 = !vec3<bool>(true || global2.a, (var_0 << (reverseBits(var_2.b.x) % 32u)) > _wgslsmith_div_i32(~var_0, var_0), all(!select(vec4<bool>(true, true, false, global2.a), vec4<bool>(false, false, true, global2.a), vec4<bool>(global2.a, false, false, true))));
    let var_6 = Struct_3(var_0, ~(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 35409i), vec2<i32>(var_0, -19924i)), abs(vec2<i32>(var_0, var_0))) ^ countOneBits(vec2<i32>(var_0, 68402i) | vec2<i32>(var_0, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_2().a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.b.x, var_1.b.x, 36324u), reverseBits(vec3<u32>(2104u, 1u, 4294967295u))), vec3<u32>(var_2.b.x, ~var_2.b.x, firstLeadingBit(0u)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(56195u, u_input.c), 4294967295u) & var_1.b.x, var_1.e.b.yz);
}

