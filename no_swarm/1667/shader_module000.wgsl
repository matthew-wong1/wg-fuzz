struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec2<i32>(-34049i, 1i), vec4<bool>(true, false, false, false), vec2<bool>(true, true), 25020i), Struct_4(vec2<i32>(1i, -1i), vec4<bool>(true, false, true, false), vec2<bool>(false, false), -1i), Struct_4(vec2<i32>(0i, -11320i), vec4<bool>(false, true, false, false), vec2<bool>(false, true), i32(-2147483648)));

var<private> global1: Struct_3 = Struct_3(vec4<f32>(297f, 357f, -1130f, 1676f), i32(-2147483648), 18137i, 4294967295u);

var<private> global2: vec3<f32>;

var<private> global3: vec3<i32> = vec3<i32>(0i, 0i, -21904i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> u32 {
    global0 = array<Struct_4, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.wwz), global1.a.zyz), global1.a.wyx, true));
    global3 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-502f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f + 1868f)), -451f), global1.a.x, 2489f)));
    var var_2 = global0[_wgslsmith_index_u32(global1.d, 3u)];
    return abs(~1u);
}

fn func_2() -> u32 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~(~(vec4<u32>(u_input.a.x, 83978u, 37435u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), vec4<u32>(global1.d, func_3(vec3<i32>(global3.x, 0i, global1.b), _wgslsmith_div_vec3_u32(vec3<u32>(global1.d, 82078u, u_input.a.x), u_input.a)), ~(~u_input.a.x), _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.xy), abs(u_input.a.zz))));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(abs(-2236f)), 668f, global2.x, 1335f), ~global3.x << (var_0.x % 32u), global1.b, var_0.x);
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_add_i32(2147483647i, -global1.b)), -6440i), max(~(vec3<i32>(-1i, 2147483647i, global3.x) & vec3<i32>(global1.b, global1.b, 1i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, var_1.c, 28126i), vec3<i32>(58899i, var_1.c, -2147483647i))) << (~(vec3<u32>(3945u, var_1.d, global1.d) & _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, global1.d, 14808u), vec3<u32>(26559u, 4294967295u, var_0.x))) % vec3<u32>(32u)));
    let var_3 = all(select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.a.x >= -373f))));
    let var_4 = true;
    return ~4294967295u;
}

fn func_1() -> i32 {
    var var_0 = Struct_3(vec4<f32>(-987f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 539f) * _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 231f)) - global1.a.x), global2.x), -_wgslsmith_div_i32(2147483647i, ~(-global3.x)), -min(select(-1i, abs(global1.c), true), _wgslsmith_sub_i32(-1i, -68173i)), _wgslsmith_mult_u32(func_2(), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(37012u, 57974u, 4294967295u, global1.d), vec4<u32>(52192u, 1u, 4294967295u, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.yyw, vec3<f32>(global2.x, 1194f, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.yww, global1.a.zww, false)) + global1.a.xzx) - var_0.a.wxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a.zyy, vec3<f32>(-438f, _wgslsmith_f_op_f32(abs(global1.a.x)), var_0.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1563f))), 1320f, _wgslsmith_div_f32(var_0.a.x, -938f)))));
    var var_2 = abs(countOneBits(vec2<u32>(var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(70701u, global1.d, 22212u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d, var_0.d, global1.d, var_0.d), vec4<u32>(4294967295u, var_0.d, global1.d, var_0.d))))));
    global1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 1000f) * global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + 506f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + global1.a.x), _wgslsmith_f_op_f32(trunc(363f)))), 1f), max(~(~global3.x), var_0.b) << (func_3(vec3<i32>(i32(-1i) * -41340i, countOneBits(-14325i), 0i), u_input.a) % 32u), global1.c, ~(~func_2()));
    global1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1411f, global2.x, global2.x), global1.a), _wgslsmith_f_op_vec4_f32(-global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), var_0.c, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(48800i, global1.c, -2147483647i, global3.x), -vec4<i32>(17476i, var_0.c, 2147483647i, var_0.c)), 48447i), var_2.x);
    return ~_wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(~vec2<i32>(-20521i, -7672i), global3.zy), global1.b), _wgslsmith_mult_i32(i32(-1i) * -65082i, global1.c) & abs(-2147483647i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(func_1(), arg_1.b.b);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-884f, global2.x)), _wgslsmith_f_op_f32(round(global2.x))))), global2.x, _wgslsmith_f_op_f32(exp2(global2.x)));
    global3 = countOneBits(select(var_0.b, countOneBits(~reverseBits(vec3<i32>(34288i, -2147483647i, arg_0.x))), false));
    global3 = -(~vec3<i32>(global1.b, -2147483647i, var_0.a));
    var var_1 = vec4<bool>(arg_1.c, false, !arg_1.c, _wgslsmith_mult_u32(u_input.a.x, arg_1.a.x) > ~(~countOneBits(4294967295u)));
    return arg_1.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_4(vec2<i32>(-14278i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, func_4(arg_1.b, Struct_2(u_input.a, Struct_1(global3.x, vec3<i32>(global1.b, arg_1.a, global3.x)), arg_0)).a), ~countOneBits(1i), -global1.b)), select(!vec4<bool>(!arg_0, any(vec4<bool>(true, true, arg_0, arg_0)), arg_0, true), vec4<bool>(!(arg_0 | false), all(vec4<bool>(arg_0, true, arg_0, arg_0)), arg_0, true), any(vec2<bool>(arg_0, arg_0))), vec2<bool>(any(vec4<bool>(true, true, !arg_0, arg_0)), arg_0), global1.b);
    global0 = array<Struct_4, 3>();
    var var_1 = Struct_3(global1.a, var_0.a.x, -_wgslsmith_mult_i32(-_wgslsmith_add_i32(arg_1.a, -28059i), abs(global3.x)), ~arg_3);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, 1000f), var_1.a.zw)) * _wgslsmith_div_vec2_f32(var_1.a.zw, vec2<f32>(var_1.a.x, var_1.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-2298f)), 1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(609f, global1.a.x))))));
    var_0 = global0[_wgslsmith_index_u32(~21627u, 3u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(abs(923f))) * _wgslsmith_div_vec2_f32(arg_2, _wgslsmith_f_op_vec2_f32(trunc(global1.a.ww))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.zx * global2.xz)));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_5(true && all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), func_4(vec3<i32>(-2062i, -7058i, func_1()), Struct_2(countOneBits(vec3<u32>(u_input.a.x, 50809u, 1u)), Struct_1(global3.x, vec3<i32>(global1.c, global3.x, global3.x)), true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(335f, 1010f)), _wgslsmith_f_op_f32(select(global1.a.x, var_0.x, true)))), 0u))));
    let var_1 = global1.c == 0i;
    global1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1043f, 787f)) * _wgslsmith_f_op_f32(max(global2.x, global2.x)))), _wgslsmith_f_op_f32(trunc(891f)), var_0.x), (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global1.b, global1.b), firstLeadingBit(-1i), -global3.x) | _wgslsmith_dot_vec4_i32(-vec4<i32>(global3.x, global1.c, 2147483647i, -10750i), -vec4<i32>(global3.x, global1.b, -2147483647i, 12402i))) | global3.x, (-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, global1.b, 0i), vec3<i32>(-1i, 4210i, global1.c)) | _wgslsmith_sub_i32(-global3.x, _wgslsmith_mult_i32(54213i, 0i))) >> (4294967295u % 32u), ~(~u_input.a.x ^ 10856u) | min(global1.d, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, vec4<i32>(19993i, global3.x, ~global1.c, _wgslsmith_mult_i32(1i, global1.c)), ~firstTrailingBit(vec3<i32>(global1.b, global1.b, -27738i)) | vec3<i32>(~_wgslsmith_add_i32(global1.c, global1.b), _wgslsmith_mult_i32(~2147483647i, ~global1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global1.c, global3.x), firstTrailingBit(vec4<i32>(global3.x, -17059i, global1.b, global3.x)))), 4294967295u);
}

