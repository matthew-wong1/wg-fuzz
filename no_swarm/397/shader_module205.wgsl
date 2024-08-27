struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<u32>(1u, 9656u), 0u, vec4<bool>(true, false, true, false), 2147483647i), Struct_1(vec2<u32>(1u, 1u), 22806u, vec4<bool>(false, true, true, true), -1706i), Struct_1(vec2<u32>(4446u, 4294967295u), 0u, vec4<bool>(true, false, true, false), -76464i), Struct_1(vec2<u32>(4294967295u, 0u), 29595u, vec4<bool>(true, false, true, true), -34625i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, vec4<bool>(true, true, false, false), 1i), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, vec4<bool>(true, false, false, true), 0i), Struct_1(vec2<u32>(1u, 36628u), 4294967295u, vec4<bool>(true, false, true, true), -1i), Struct_1(vec2<u32>(49317u, 0u), 43428u, vec4<bool>(true, false, false, true), i32(-2147483648)), Struct_1(vec2<u32>(0u, 12145u), 1u, vec4<bool>(true, false, false, false), 1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, vec4<bool>(false, false, true, true), -30415i), Struct_1(vec2<u32>(47045u, 4294967295u), 1u, vec4<bool>(true, true, false, true), 58392i), Struct_1(vec2<u32>(1u, 1u), 19798u, vec4<bool>(true, false, true, true), 14717i), Struct_1(vec2<u32>(122692u, 43088u), 74822u, vec4<bool>(false, false, false, false), -1i), Struct_1(vec2<u32>(0u, 4294967295u), 103822u, vec4<bool>(true, false, false, false), 0i), Struct_1(vec2<u32>(1u, 1u), 4294967295u, vec4<bool>(true, false, false, true), -34621i), Struct_1(vec2<u32>(4294967295u, 48050u), 1u, vec4<bool>(false, false, true, false), i32(-2147483648)), Struct_1(vec2<u32>(68840u, 41456u), 28207u, vec4<bool>(false, false, false, true), -3195i), Struct_1(vec2<u32>(18886u, 4317u), 0u, vec4<bool>(true, false, false, true), i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(8319u, 4294967295u), 4294967295u, vec4<bool>(false, false, true, false), -1i);

var<private> global3: array<bool, 15> = array<bool, 15>(false, true, true, true, false, true, true, true, false, true, false, false, true, true, true);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = ~vec3<u32>(~global2.b, 1u, 29413u);
    global0 = array<Struct_1, 21>();
    var var_1 = 1000f;
    var var_2 = _wgslsmith_div_vec3_u32(countOneBits(~select(vec3<u32>(arg_2.b, 16857u, arg_2.b) << (vec3<u32>(1u, arg_2.b, 31984u) % vec3<u32>(32u)), vec3<u32>(arg_0, var_0.x, 4294967295u) & vec3<u32>(var_0.x, 27023u, global2.a.x), true)), countOneBits(~vec3<u32>(var_0.x, 1u, global2.b)));
    let var_3 = arg_2;
    return ~_wgslsmith_sub_u32(u_input.b, 1u) << (u_input.b % 32u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-526f * 913f), _wgslsmith_f_op_f32(ceil(817f)))))), -317f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-926f, -1000f)) - _wgslsmith_f_op_f32(step(-491f, 596f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1813f))))))));
    global1 = array<Struct_1, 18>();
    let var_1 = ~(~(~(~vec4<u32>(4294967295u, 0u, global2.a.x, 4294967295u)))) & ~abs(select(vec4<u32>(global2.a.x, u_input.b, 81724u, u_input.a) & vec4<u32>(global2.a.x, 0u, global2.a.x, 59414u), vec4<u32>(1u, u_input.b, 0u, 32125u), any(global2.c)));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(38748u, min(4294967295u, var_1.x)), var_1.x, vec4<bool>(true, true, true, any(!global2.c)), -_wgslsmith_sub_i32(global2.d, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1419f, 227f), _wgslsmith_f_op_f32(f32(-1f) * -905f), global2.c.x)))), vec3<i32>(-1i, global2.d, global2.d), vec3<bool>(global2.c.x && (0u < _wgslsmith_mult_u32(global2.b, 1u)), all(vec3<bool>(global3[_wgslsmith_index_u32(~0u, 15u)], true, global3[_wgslsmith_index_u32(38375u, 15u)] & global2.c.x)), true));
    var_2 = Struct_2(Struct_1(global2.a, ~12841u, !(!vec4<bool>(true, global2.c.x, true, global2.c.x)), -_wgslsmith_add_i32(global2.d, 27986i)), var_2.b, _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.c, vec3<i32>(2147483647i, var_2.a.d, global2.d), var_2.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.d, 0i, -2147483647i), var_2.c)), vec3<i32>(-1598i, i32(-1i) * -1i, var_2.c.x >> (func_1(73214u, global2.d, var_2.a) % 32u))), vec3<bool>(true, countOneBits(_wgslsmith_clamp_u32(5134u, var_1.x, 12021u)) < 0u, all(vec2<bool>(true, any(var_2.d.zz)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1024f);
}

fn func_2() -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(global2.b, 18u)];
    let var_0 = !(!global2.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(798f, -652f, 248f), _wgslsmith_div_vec3_f32(vec3<f32>(803f, -1580f, -1430f), vec3<f32>(-1232f, 1961f, 654f)), true))) - vec3<f32>(_wgslsmith_f_op_f32(-857f - _wgslsmith_f_op_f32(func_3())), -1805f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1535f, -742f)), -2452f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(846f, -936f, 1142f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, 1636f, 542f)))))), global2.c.wxy));
    global0 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-683f, _wgslsmith_f_op_f32(ceil(301f))))));
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a << (u_input.a % 32u), 0u) ^ ~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(20858u, 32465u, 17181u, 4112u), vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 38975u), true), reverseBits(vec4<u32>(52853u, global2.a.x, u_input.b, 2516u)) ^ select(vec4<u32>(global2.b, global2.b, 18083u, 38965u), vec4<u32>(u_input.b, 11329u, u_input.b, 4294967295u), true)), 18u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global3 = array<bool, 15>();
    let var_0 = u_input.b;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), -445f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f), -1340f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f + 100f) - _wgslsmith_f_op_f32(-1000f + 1536f))))));
    let var_3 = var_2.zx;
    return Struct_1(_wgslsmith_add_vec2_u32(global2.a, select(arg_1.a, func_2().a, all(func_2().c))), var_1.a.x, vec4<bool>(!global2.c.x, true, arg_1.c.x == true, arg_1.c.x), global2.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> StorageBuffer {
    global0 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_mult_vec4_i32(max(min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, -15742i, global2.d, arg_1.c.d), vec4<i32>(-52950i, arg_1.c.d, global2.d, global2.d)), ~arg_1.c.d, 60637i, _wgslsmith_add_i32(arg_0.d, -12617i)), firstLeadingBit(vec4<i32>(-1i, global2.d, -36587i, -23814i) | vec4<i32>(arg_1.a.a.d, arg_1.c.d, global2.d, arg_0.d))), ~(vec4<i32>(2147483647i, global2.d, global2.d, arg_1.c.d) << (select(vec4<u32>(u_input.a, u_input.a, global2.b, 1u), vec4<u32>(global2.a.x, 50768u, arg_1.a.a.a.x, u_input.b), arg_0.c) % vec4<u32>(32u)))), vec4<i32>(global2.d, abs(-arg_0.d) | reverseBits(_wgslsmith_mod_i32(3118i, 18562i)), _wgslsmith_dot_vec3_i32(arg_1.a.c, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.d, arg_1.a.a.d, 0i), vec3<i32>(0i, 18391i, -2147483647i)), max(arg_1.a.c, vec3<i32>(arg_0.d, 2147483647i, global2.d)))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(arg_0.d), _wgslsmith_add_i32(arg_0.d, arg_0.d)), abs(-3036i))));
    var var_1 = arg_2.x;
    var var_2 = vec3<u32>(global2.b, 1u, 0u << (~(u_input.b ^ ~1660u) % 32u));
    let var_3 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -840f), global2.a.x, vec2<u32>(global2.b, func_4(func_2(), func_2(), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, var_3.c.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_1.a.c.x), var_3.a.c.zz))).a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, arg_1.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, func_1(4294967295u, -2147483647i, Struct_1(vec2<u32>(u_input.a, global2.a.x), 50669u, global2.c, 14425i)), _wgslsmith_clamp_u32(u_input.b, u_input.a, 24552u)), vec4<u32>(max(u_input.a, u_input.b), 75817u, abs(u_input.b), 9859u << (global2.a.x % 32u))), ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 15594u), vec4<u32>(global2.a.x, 0u, u_input.b, 0u)), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(global2.a.x, global2.a.x, u_input.a, 61728u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = array<Struct_1, 18>();
    var var_2 = global2.c;
    let var_3 = global2.d;
    let var_4 = vec2<u32>(u_input.a, 49392u);
    let x = u_input.a;
    s_output = func_5(func_4(func_2(), Struct_1(_wgslsmith_mod_vec2_u32(var_0.wz, vec2<u32>(u_input.b, 42418u)), var_0.x, global2.c, select(reverseBits(global2.d), i32(-1i) * -29038i, true)), _wgslsmith_div_i32(2147483647i, global2.d)), Struct_3(Struct_2(func_4(Struct_1(var_0.wy, var_4.x, global2.c, global2.d), Struct_1(global2.a, global2.b, global2.c, -1i), 1i), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(var_1, var_1))), _wgslsmith_mod_vec3_i32(-vec3<i32>(global2.d, -43886i, -31802i), reverseBits(vec3<i32>(global2.d, global2.d, global2.d))), vec3<bool>(true, true, true)), !vec2<bool>(true, !global2.c.x), Struct_1(countOneBits(var_0.xz << (var_4 % vec2<u32>(32u))), ~global2.b, !vec4<bool>(var_2.x, global2.c.x, global2.c.x, true), firstTrailingBit(1i))), global2.c);
}

