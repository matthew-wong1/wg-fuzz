struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -216f;

var<private> global1: array<vec2<u32>, 29>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-1i, 7428i, 69752i, -1i), vec3<f32>(-1000f, -1000f, 565f));

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = arg_1;
    let var_1 = ~(~(~countOneBits(u_input.c.wyz << (vec3<u32>(77040u, 14663u, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = vec2<i32>(global3.x, _wgslsmith_dot_vec4_i32(~arg_1.b.a, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2.a.yzy, global2.a.xxw), firstLeadingBit(global2.a.x), arg_3), _wgslsmith_div_i32(~arg_1.a.x, countOneBits(1i)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(-45350i, arg_1.c.e.a.x)), ~(-global2.a.x))));
    var var_3 = arg_1.c;
    var var_4 = (var_1.x & var_1.x) << (~(~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), 11775u)) % 32u);
    return global2.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = global2.b.x;
    let var_1 = vec2<u32>(~max(0u, u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(0u | u_input.a.x, u_input.c.x), u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.b.yy, global2.b.zz, false)) - vec2<f32>(-371f, 657f)) - vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -652f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(func_3(Struct_3(global2.a.zx, Struct_1(vec4<i32>(-1328i, u_input.b, global3.x, 0i), vec3<f32>(-1494f, global2.b.x, 593f)), Struct_2(global2.b.x, Struct_1(global2.a, global2.b), false, Struct_1(global2.a, global2.b), Struct_1(vec4<i32>(global2.a.x, u_input.b, 20931i, global3.x), global2.b))), Struct_3(global2.a.zz, Struct_1(vec4<i32>(3583i, 2147483647i, -7589i, global3.x), global2.b), Struct_2(-1210f, Struct_1(vec4<i32>(u_input.b, -1i, global3.x, global2.a.x), global2.b), true, Struct_1(global2.a, global2.b), Struct_1(global2.a, vec3<f32>(global2.b.x, 1559f, global2.b.x)))), Struct_2(global2.b.x, Struct_1(global2.a, vec3<f32>(global2.b.x, global2.b.x, global2.b.x)), false, Struct_1(vec4<i32>(global2.a.x, 41805i, -2147483647i, global2.a.x), vec3<f32>(global2.b.x, -901f, -822f)), Struct_1(global2.a, global2.b)), global2.a.x)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(440f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(624f, global2.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.b.zx, _wgslsmith_f_op_vec2_f32(-global2.b.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.b.yx, global2.b.zz))), vec2<bool>(true, true)))));
    let var_3 = Struct_1(vec4<i32>(select(u_input.b, ~(-26912i), all(vec4<bool>(true, true, true, true))), reverseBits(u_input.b), select(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, -1i), abs(0i)), _wgslsmith_dot_vec3_i32(~global2.a.xxy, vec3<i32>(1943i, -2147483647i, 0i)), !any(vec3<bool>(false, false, true))), -countOneBits(-global3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b)));
    let var_4 = ~u_input.a.zxx;
    return Struct_1(var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(597f, var_2.x, global2.b.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1573f, global2.b.x, -376f), vec3<f32>(global2.b.x, -258f, -1538f)))) * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -776f), var_2.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = -1i;
    var var_2 = Struct_3(select(vec2<i32>(var_1, _wgslsmith_dot_vec3_i32(arg_0.a.yzx, ~global2.a.xwx)), global2.a.yw, false || (any(vec4<bool>(false, true, false, false)) || any(vec3<bool>(true, true, true)))), arg_0, Struct_2(arg_0.b.x, func_2(), true, Struct_1(vec4<i32>(_wgslsmith_sub_i32(global3.x, arg_0.a.x), 2147483647i, global3.x, _wgslsmith_clamp_i32(global2.a.x, u_input.b, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - vec3<f32>(479f, arg_0.b.x, -1251f))), func_2()));
    let var_3 = ~u_input.d >> (max(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(35746u, u_input.d), 1u), u_input.c.x ^ _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c)) % 32u);
    global1 = array<vec2<u32>, 29>();
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global3 = _wgslsmith_add_vec2_i32(select(arg_0.a << (~vec2<u32>(u_input.d, 44044u) % vec2<u32>(32u)), ~(-vec2<i32>(global3.x, u_input.b)), all(!vec3<bool>(arg_0.c.c, true, true))), -(-global2.a.xz << (abs(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]) % vec2<u32>(32u)))) << (global1[_wgslsmith_index_u32(~u_input.a.x | 54818u, 29u)] % vec2<u32>(32u));
    global1 = array<vec2<u32>, 29>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(-127f)), Struct_1(vec4<i32>(_wgslsmith_add_i32(global2.a.x, global2.a.x) | 2147483647i, -global3.x, reverseBits(1i), 3317i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), arg_3.b.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, 208f, 217f) + arg_3.c.d.b)))), !(!(!(!arg_0.c.c))), func_4(Struct_1(vec4<i32>(arg_3.a.x, -2147483647i, arg_2, u_input.b) & abs(arg_3.c.d.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.b)))), func_2());
    global3 = vec2<i32>(-2147483647i, global2.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b.x - arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b.x)) * -1847f), -1188f)));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -941f), Struct_1(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(9134i, 0i, 2147483647i, var_0.d.a.x) >> (vec4<u32>(0u, 0u, 7362u, 2097u) % vec4<u32>(32u))), firstLeadingBit(arg_0.c.e.a) & -global2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-682f, global2.b.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(var_0.e.b.x, arg_3.c.a))))), false, func_4(Struct_1(abs(~vec4<i32>(u_input.b, 1i, global2.a.x, u_input.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.e.b.x, 1574f, global2.b.x))))), func_2());
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = 1i;
    let var_1 = vec3<bool>(!any(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec3<bool>(false, false, true)), select(false, false, false))), true, ~(~var_0) > ~_wgslsmith_mult_i32(global3.x << (34317u % 32u), _wgslsmith_div_i32(-1i, 2147483647i)));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(sign(global2.b)));
    let var_2 = vec3<f32>(-155f, -3249f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -839f)), -1883f));
    var var_3 = func_5(Struct_3(global2.a.yx, func_4(func_2()), Struct_2(_wgslsmith_f_op_f32(-func_4(Struct_1(vec4<i32>(-2147483647i, global3.x, global2.a.x, 3056i), var_2)).b.x), func_2(), false, Struct_1(vec4<i32>(var_0, -10352i, global3.x, -20368i), vec3<f32>(1097f, var_2.x, var_2.x)), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(trunc(global2.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, 687f))), var_0, Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, max(76879i, 2147483647i)), firstLeadingBit(~global2.a.xz)), func_4(Struct_1(vec4<i32>(1i, global2.a.x, u_input.b, 10975i), _wgslsmith_f_op_vec3_f32(exp2(var_2)))), Struct_2(arg_0, Struct_1(-vec4<i32>(var_0, 39965i, 0i, global3.x), _wgslsmith_f_op_vec3_f32(-global2.b)), any(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, var_1.x, true, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x))), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -804f, global2.b.x) + vec3<f32>(global2.b.x, -121f, var_2.x))), Struct_1(vec4<i32>(global2.a.x, 0i, -1i, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1603f, -988f))))));
    return vec2<i32>(u_input.b, global2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~max(func_1(_wgslsmith_f_op_f32(1000f * global2.b.x)), global2.a.wx), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(select(global2.b, vec3<f32>(1024f, _wgslsmith_f_op_f32(global2.b.x * 567f), _wgslsmith_f_op_f32(global2.b.x * 300f)), true))), Struct_2(global2.b.x, func_2(), false, func_2(), func_5(Struct_3(vec2<i32>(1i, 9232i) >> (global1[_wgslsmith_index_u32(u_input.a.x, 29u)] % vec2<u32>(32u)), Struct_1(vec4<i32>(-2147483647i, 1i, u_input.b, 0i), global2.b), func_5(Struct_3(vec2<i32>(global3.x, u_input.b), Struct_1(global2.a, global2.b), Struct_2(2153f, Struct_1(global2.a, vec3<f32>(global2.b.x, global2.b.x, global2.b.x)), true, Struct_1(vec4<i32>(47780i, -1i, global3.x, -14704i), global2.b), Struct_1(vec4<i32>(-1i, -1i, global3.x, -754i), global2.b))), -257f, global2.a.x, Struct_3(global2.a.xx, Struct_1(vec4<i32>(2147483647i, global2.a.x, 52625i, global2.a.x), vec3<f32>(global2.b.x, -353f, global2.b.x)), Struct_2(global2.b.x, Struct_1(vec4<i32>(global2.a.x, global3.x, global3.x, global3.x), vec3<f32>(-418f, 193f, global2.b.x)), false, Struct_1(global2.a, vec3<f32>(global2.b.x, global2.b.x, global2.b.x)), Struct_1(global2.a, global2.b))))), global2.b.x, u_input.b, Struct_3(vec2<i32>(global2.a.x, 7391i), func_2(), func_5(Struct_3(vec2<i32>(global2.a.x, u_input.b), Struct_1(vec4<i32>(2147483647i, global3.x, u_input.b, -1i), vec3<f32>(global2.b.x, global2.b.x, global2.b.x)), Struct_2(-548f, Struct_1(global2.a, vec3<f32>(-763f, 514f, 224f)), true, Struct_1(vec4<i32>(global3.x, 28871i, 24033i, global3.x), vec3<f32>(950f, 1530f, -1835f)), Struct_1(global2.a, vec3<f32>(global2.b.x, global2.b.x, global2.b.x)))), 1944f, global3.x, Struct_3(global2.a.wx, Struct_1(global2.a, global2.b), Struct_2(120f, Struct_1(vec4<i32>(u_input.b, 1i, global3.x, u_input.b), vec3<f32>(1168f, -1000f, 1455f)), false, Struct_1(vec4<i32>(-2147483647i, -56672i, u_input.b, global2.a.x), global2.b), Struct_1(global2.a, global2.b)))))).b));
    global3 = vec2<i32>(max(2147483647i, ~(-33946i)), -(~global2.a.x));
    var var_1 = select(!(!(!(!vec4<bool>(true, var_0.c.c, true, var_0.c.c)))), vec4<bool>(select(var_0.c.c, any(select(vec2<bool>(var_0.c.c, var_0.c.c), vec2<bool>(false, true), var_0.c.c)), false), var_0.c.c, -860f != _wgslsmith_f_op_f32(select(-172f, _wgslsmith_f_op_f32(step(-198f, 1342f)), true)), !var_0.c.c), false);
    var var_2 = u_input.c.x;
    var_2 = u_input.c.x >> (u_input.c.x % 32u);
    var_2 = countOneBits(12619u);
    let var_3 = var_0.c;
    var_2 = 28845u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, global2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 2588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.x)))), 584f, 15265u);
}

