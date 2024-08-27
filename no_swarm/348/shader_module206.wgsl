struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 19>;

var<private> global3: array<Struct_3, 32>;

var<private> global4: vec2<i32> = vec2<i32>(-25324i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> bool {
    global2 = array<bool, 19>();
    let var_0 = ~(~abs(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, -1i)), vec3<i32>(13377i, 2147483647i, global4.x) ^ vec3<i32>(61857i, arg_0.e, 2147483647i))));
    var var_1 = global3[_wgslsmith_index_u32(min(~1u, 7202u), 32u)];
    global4 = ~vec2<i32>(_wgslsmith_add_i32(-arg_0.e, var_0.x >> (u_input.b % 32u)), ~(u_input.a ^ var_0.x)) | _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.d.x, firstTrailingBit(global4.x))), select(u_input.d, vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a), !vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], false)));
    global4 = _wgslsmith_mult_vec2_i32(~(-vec2<i32>(arg_0.e, ~var_1.c)), -abs(_wgslsmith_sub_vec2_i32(u_input.d >> (u_input.c.yz % vec2<u32>(32u)), reverseBits(vec2<i32>(arg_0.e, u_input.a)))));
    return (var_1.b.d | (var_0.x ^ ~(~9003i))) >= var_1.e;
}

fn func_2() -> u32 {
    global0 = vec3<bool>(all(select(!vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(true, true, true), select(true, global2[_wgslsmith_index_u32(12485u, 19u)] || true, true))), !global0.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 19u)]);
    global3 = array<Struct_3, 32>();
    var var_0 = Struct_2(((true & all(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(0u, 19u)], global0.x, global0.x))) & !func_3(Struct_3(-387f, Struct_1(1000f, vec2<bool>(false, global0.x), vec4<f32>(323f, 1741f, -401f, 247f), global4.x, vec3<bool>(false, true, true)), -2147483647i, vec4<f32>(1000f, -357f, -834f, -176f), u_input.d.x), vec4<u32>(0u, u_input.b, 33601u, 1u))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1947f)) * 1000f) > -1109f), global2[_wgslsmith_index_u32(global1.x, 19u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1335f, -2800f, -486f) - vec3<f32>(1449f, -641f, -409f))) + vec3<f32>(_wgslsmith_div_f32(290f, 1381f), _wgslsmith_f_op_f32(round(-213f)), 532f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1088f, 784f, 1143f) - vec3<f32>(-1000f, -1753f, 280f)))))), Struct_1(402f, vec2<bool>(global0.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-525f, 1602f, 282f, 1279f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1261f, 1312f, 393f, 813f) * vec4<f32>(-1000f, 1000f, 1000f, 1026f))))), (-u_input.a & u_input.a) | global4.x, select(!select(vec3<bool>(global2[_wgslsmith_index_u32(74674u, 19u)], global2[_wgslsmith_index_u32(2699u, 19u)], false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 19u)]), false), vec3<bool>(any(vec3<bool>(true, false, true)), global2[_wgslsmith_index_u32(global1.x, 19u)] || true, all(global0.zy)), select(vec3<bool>(global0.x, true, true), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], global2[_wgslsmith_index_u32(global1.x, 19u)], global0.x), vec3<bool>(false, global0.x, false)))), !select(select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], false, global2[_wgslsmith_index_u32(37113u, 19u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 19u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(58108u, 19u)], true, global2[_wgslsmith_index_u32(global1.x, 19u)])), !select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, true, true, false), true), all(!global0.zx)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.a)) - var_0.c.x);
    let var_2 = ~(~select(4536u, 0u, global0.x));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(25913u, global1.x), (~var_2 >> (_wgslsmith_div_u32(u_input.b, var_2) % 32u)) >> (u_input.c.x % 32u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = !select(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(66925u, 19u)], false, false), !vec3<bool>(global0.x, global0.x, global2[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global0.x, true)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], false, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, global2[_wgslsmith_index_u32(arg_3, 19u)]), false), vec3<bool>(true, true, true), all(vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, global2[_wgslsmith_index_u32(arg_3, 19u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_3, 19u)], true))), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(24306u, 19u)], false, global0.x)), select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 19u)], global0.x, false), vec3<bool>(false, global0.x, false), false), select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global0.x, global0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(58367u, 19u)]), vec3<bool>(true, global0.x, true)), select(false, false, true))), !(global0.x && true));
    let var_1 = select(select(!select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 19u)], var_0.x), var_0.x), select(vec3<bool>(global0.x, true, var_0.x), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), global2[_wgslsmith_index_u32(u_input.c.x, 19u)]), vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(func_2(), u_input.b), 19u)]), select(vec3<bool>(global0.x, any(select(vec4<bool>(global0.x, var_0.x, true, true), vec4<bool>(global0.x, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 19u)], global0.x), var_0.x)), (arg_0 | u_input.c.x) != arg_2.x), select(vec3<bool>(var_0.x, select(false, var_0.x, global2[_wgslsmith_index_u32(arg_3, 19u)]), global0.x || false), vec3<bool>(any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(44380u, 19u)], global2[_wgslsmith_index_u32(46631u, 19u)])), arg_1 > 2147483647i, false), !select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, true, var_0.x), false)), true), true);
    var var_2 = Struct_2(false, !any(select(select(vec3<bool>(true, true, true), var_1, var_1), vec3<bool>(var_1.x, false, true), !var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1307f, 1654f, -338f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(744f, 1000f, 309f), vec3<f32>(1570f, 668f, 253f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, -704f, -826f) * vec3<f32>(1562f, -730f, -103f))))), Struct_1(349f, select(select(!var_1.zz, var_0.zy, global0.yy), select(select(global0.zz, var_1.yz, false), select(var_0.zy, vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(arg_0, 19u)]), global0.yy), true), vec2<bool>(global0.x, any(var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-2339f)), -969f, 1557f, _wgslsmith_f_op_f32(244f * -1333f))), -58633i, select(select(var_1, !var_1, global2[_wgslsmith_index_u32(5291u, 19u)] | global0.x), vec3<bool>(true, true, true & global0.x), func_3(global3[_wgslsmith_index_u32(arg_3, 32u)], arg_2) || true)), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.b, 19u)]));
    return global3[_wgslsmith_index_u32(global1.x, 32u)];
}

fn func_1() -> f32 {
    let var_0 = func_4(~global1.x, 41494i, vec4<u32>(24931u, 1u, func_2(), min(global1.x, ~func_2())), u_input.b);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b.c.x)), 1034f, false)) + _wgslsmith_f_op_f32(-2336f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-931f, -1111f, global0.x)) + _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(trunc(var_0.b.c.x)));
    let var_2 = var_0.b;
    global0 = !(!func_4(firstLeadingBit(~global1.x), 2147483647i >> (global1.x % 32u), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global1.x, 0u, u_input.c.x, 34505u)), u_input.c.x).b.e);
    let var_3 = Struct_2(abs(abs(var_2.d)) != var_2.d, !select(any(var_0.b.b), func_4(47856u ^ u_input.c.x, global4.x << (11123u % 32u), min(u_input.c, u_input.c), _wgslsmith_div_u32(global1.x, u_input.c.x)).b.e.x, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-949f * var_2.a), 1801f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(var_0.d.xwy * var_0.b.c.zxz), var_0.b.e)), var_0.b, select(vec4<bool>(all(func_4(769u, u_input.d.x, u_input.c, u_input.b).b.e), ~1i <= -var_2.d, false, !any(vec3<bool>(global0.x, var_2.b.x, global2[_wgslsmith_index_u32(6740u, 19u)]))), vec4<bool>(-var_2.d >= func_4(global1.x, -4797i, u_input.c, 32962u).e, true, var_0.b.e.x, !(!var_2.e.x)), select(vec4<bool>(true, true, any(vec4<bool>(global0.x, var_2.e.x, global2[_wgslsmith_index_u32(u_input.c.x, 19u)], true)), global2[_wgslsmith_index_u32(7975u & global1.x, 19u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false, false, false), !vec4<bool>(var_0.b.b.x, global0.x, global0.x, false), false), vec4<bool>(true, true, any(vec3<bool>(false, global0.x, true)), var_0.b.b.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -394f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(-firstLeadingBit(global4.x));
    var var_1 = vec3<f32>(-407f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1850f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1629f + -511f)))));
    var var_2 = global3[_wgslsmith_index_u32(~(4294967295u << (global1.x % 32u)), 32u)];
    global1 = vec3<u32>(global1.x, 4294967295u, _wgslsmith_sub_u32(~(global1.x & global1.x), 1u));
    let var_3 = Struct_2(func_4(4294967295u, 1i, vec4<u32>(~0u, _wgslsmith_mod_u32(0u, 37612u), 61379u, u_input.b), u_input.b).b.b.x | var_2.b.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-583f + 730f), var_1.x, global2[_wgslsmith_index_u32(global1.x, 19u)] & false)), _wgslsmith_f_op_f32(-var_1.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(step(-482f, var_2.b.a)))), _wgslsmith_f_op_vec3_f32(select(var_2.b.c.wxy, func_4(abs(1u), _wgslsmith_mod_i32(-global4.x, -1i ^ var_2.b.d), vec4<u32>(_wgslsmith_mult_u32(92800u, 15053u), 1u, 33258u | u_input.b, global1.x), u_input.c.x).d.yyx, vec3<bool>(all(vec4<bool>(var_2.b.e.x, global0.x, true, var_2.b.b.x)), true, true))), func_4(39969u, var_0, abs(vec4<u32>(_wgslsmith_clamp_u32(global1.x, u_input.c.x, u_input.c.x), 65301u, select(0u, global1.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53824u, 4294967295u), vec3<u32>(1u, 46722u, u_input.b)))), 25470u).b, select(select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(44432u, 19u)], false), vec4<bool>(global0.x, global0.x, false, global0.x), var_2.b.b.x), select(!vec4<bool>(false, true, global0.x, true), !vec4<bool>(var_2.b.b.x, global0.x, false, true), all(var_2.b.b)), vec4<bool>(true, all(vec2<bool>(false, true)), true, true)), vec4<bool>(func_4(global1.x, u_input.d.x, u_input.c, u_input.b).b.b.x && true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 101029u, u_input.c.x, 4294967295u)), abs(0u)), 19u)], true, select(!global2[_wgslsmith_index_u32(1u, 19u)], false, true)), select(!vec4<bool>(false, var_2.b.b.x, global2[_wgslsmith_index_u32(11385u, 19u)], true), !(!vec4<bool>(false, true, global0.x, false)), vec4<bool>(-976f != var_1.x, global0.x, true, !global0.x))));
    global1 = vec3<u32>(_wgslsmith_add_u32(select(1u, ~16578u, any(var_3.e.yw)), u_input.c.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 66007u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 17281u, global1.x, 11584u)), u_input.b), ~(~u_input.c.x & (u_input.b & 4294967295u))) | abs(countOneBits(vec3<u32>(1u << (u_input.b % 32u), _wgslsmith_clamp_u32(u_input.b, global1.x, global1.x), 1u)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1413f)))), _wgslsmith_f_op_f32(f32(-1f) * -1033f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, reverseBits(var_3.d.d), -min(-44627i, global4.x), ~select(_wgslsmith_clamp_i32(-18277i, -14992i, var_3.d.d), reverseBits(u_input.d.x), all(global0.xy))), ~(~_wgslsmith_clamp_vec2_i32(u_input.d, u_input.d >> (global1.zx % vec2<u32>(32u)), u_input.d)), 18440u, var_1.x, vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global4.x, u_input.a), vec3<i32>(-18670i, -1i, -64244i)), ~vec3<i32>(0i, var_2.c, 13125i)));
}

