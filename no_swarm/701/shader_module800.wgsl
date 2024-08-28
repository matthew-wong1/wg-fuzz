struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32>;

var<private> global2: f32;

var<private> global3: array<bool, 24> = array<bool, 24>(false, false, false, false, true, true, true, false, false, true, false, false, false, false, true, true, true, true, false, true, true, false, false, false);

var<private> global4: Struct_5 = Struct_5(-464f, Struct_2(i32(-2147483648), vec2<u32>(0u, 4294967295u), false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.a.zy;
    global4 = Struct_5(821f, Struct_2(-2147483647i, abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 7609u), vec2<u32>(u_input.a.x, 51474u)), vec2<u32>(1u, var_0.x))), !any(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global4.b.b.x, 24u)], global4.b.d), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 24u)], global4.b.c, global4.b.d), true)), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 8797u, u_input.a.x, global4.b.b.x))), 24u)]));
    let var_1 = ~vec4<u32>(47731u, 15535u, 4294967295u, var_0.x);
    var var_2 = abs(_wgslsmith_div_u32(var_0.x, ~22373u) | var_0.x);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, ~global4.b.a, ~(41842i | u_input.d.x)), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.e), _wgslsmith_add_vec2_i32(u_input.d.xz, vec2<i32>(-2147483647i, u_input.c)))), vec2<i32>(u_input.d.x, -1i | ~u_input.e)));
    return firstLeadingBit(vec2<u32>(~abs(1u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), 11606u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(round(arg_3));
    let var_0 = Struct_3(Struct_2(_wgslsmith_sub_i32(-2147483647i, countOneBits(-arg_1.x)), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, ~global4.b.b.x), 1u), !all(select(vec3<bool>(true, true, arg_0.d), vec3<bool>(true, global4.b.c, true), vec3<bool>(true, true, global4.b.c))), 1i <= ~select(0i, arg_1.x, false)));
    global3 = array<bool, 24>();
    let var_1 = max(vec2<u32>(_wgslsmith_mult_u32(arg_2, countOneBits(global4.b.b.x)), arg_2) & ~u_input.b.xx, abs(_wgslsmith_clamp_vec2_u32(~func_3(), ~_wgslsmith_sub_vec2_u32(global4.b.b, vec2<u32>(4294967295u, global4.b.b.x)), vec2<u32>(arg_2, firstTrailingBit(74680u)))));
    global4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1720f + arg_3))), _wgslsmith_f_op_f32(sign(-221f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a * global4.a))), -279f)), arg_0);
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    global2 = 1f;
    let var_0 = Struct_3(Struct_2(-1i, ~u_input.b.yz, select(true, true, global4.b.c), u_input.b.x != min(reverseBits(arg_1.x), 1u)));
    let var_1 = func_2(global4.b, ~abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.e, -7332i, u_input.d.x), vec3<i32>(-19179i, global4.b.a, u_input.c), global4.b.c), u_input.d.wyz ^ u_input.d.zwx, u_input.d.wyw >> (vec3<u32>(3306u, arg_1.x, u_input.b.x) % vec3<u32>(32u)))), 14635u << (arg_0 % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global4.a)))))));
    var var_2 = vec4<u32>(0u, 1u, firstLeadingBit(countOneBits(var_0.a.b.x)), _wgslsmith_mult_u32(30422u, ~_wgslsmith_sub_u32(18247u, var_0.a.b.x)) >> (max(~abs(33605u), arg_1.x) % 32u));
    global2 = 173f;
    return _wgslsmith_f_op_f32(global1.x + global1.x);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_4(countOneBits(vec4<u32>(47862u, 4294967295u, ~abs(42681u), u_input.b.x ^ countOneBits(0u))), false, Struct_1(!(!(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 24u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1043f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + arg_0) + _wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_3.a, arg_0, global1.x))))), vec3<i32>(_wgslsmith_sub_i32(-global4.b.a, 1i), 1i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(arg_3.b.a, global4.b.a, u_input.c, 1358i)))));
    var var_1 = Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * -268f), var_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, var_0.c.c.x) + _wgslsmith_div_f32(arg_3.a, -495f)) - _wgslsmith_f_op_f32(f32(-1f) * -2056f))), max(min(vec3<i32>(global4.b.a, firstLeadingBit(-2147483647i), ~55527i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d.x, var_0.c.d.x, 40845i, var_0.c.d.x), vec4<i32>(var_0.c.d.x, -1i, -16228i, 32449i)), arg_3.b.a, arg_3.b.a)), vec3<i32>(_wgslsmith_mod_i32(-12258i, 27116i), ~10658i, arg_3.b.a << (arg_3.b.b.x % 32u)) ^ ((vec3<i32>(u_input.c, u_input.e, arg_3.b.a) << (vec3<u32>(0u, 0u, global4.b.b.x) % vec3<u32>(32u))) << (abs(u_input.b) % vec3<u32>(32u)))));
    var var_2 = Struct_5(global4.a, global4.b);
    let var_3 = Struct_4(vec4<u32>(~global4.b.b.x, 86056u, u_input.b.x, ~u_input.b.x), var_1.a.x, Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_2.b.d, true, false), false)), var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1893f, var_0.c.b, arg_3.a, 1000f) * var_0.c.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.c.c)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -1000f, var_0.c.c.x, global1.x))))), ~vec3<i32>(u_input.d.x, arg_3.b.a, _wgslsmith_dot_vec2_i32(var_1.d.zy, var_0.c.d.yy))));
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(min(-127f, var_3.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1145f), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)) + 1409f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(~1u, vec4<u32>(30816u, global4.b.b.x, 62627u, 99905u))), all(!vec3<bool>(true, false, global4.b.c)), !vec2<bool>(global4.b.c, false), Struct_5(_wgslsmith_f_op_f32(global1.x - global4.a), Struct_2(-1i, global4.b.b, true, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1762f, global1.x, global1.x)), vec3<f32>(-1000f, global1.x, global4.a)))), vec3<bool>(func_2(Struct_2(-u_input.c, ~global4.b.b, global3[_wgslsmith_index_u32(global4.b.b.x, 24u)], any(vec4<bool>(false, true, false, false))), _wgslsmith_sub_vec3_i32(u_input.d.xxx, u_input.d.yxw) | u_input.d.wzx, 0u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a)))).a.c, true, true)));
    let var_0 = global4.b.b.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(562f, global1.x, global3[_wgslsmith_index_u32(global4.b.b.x, 24u)])), _wgslsmith_f_op_f32(global4.a * global1.x)) + _wgslsmith_f_op_f32(max(-484f, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3[_wgslsmith_index_u32(abs(11395u), 24u)])));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global1.x, (true | global4.b.c) || !global3[_wgslsmith_index_u32(global4.b.b.x, 24u)], vec2<bool>(false, false), Struct_5(_wgslsmith_div_f32(1482f, -1049f), global4.b))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) * global4.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -166f), 2354f)), global4.b.d, vec2<bool>(true, true), Struct_5(_wgslsmith_f_op_f32(-global4.a), func_2(Struct_2(1i, u_input.a.xz, false, true), u_input.d.wwz, 3251u, global1.x).a))) * _wgslsmith_f_op_f32(-2339f - _wgslsmith_f_op_f32(floor(global4.a)))));
    global2 = _wgslsmith_f_op_f32(func_4(global4.a, !select(func_2(Struct_2(global4.b.a, u_input.b.zx, false, false), u_input.d.zxz, u_input.a.x, global1.x).a.c, global4.b.c, any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 24u)], false, true))) && func_2(Struct_2(u_input.c, vec2<u32>(74548u, u_input.a.x), all(vec3<bool>(global4.b.d, false, global4.b.d)), global3[_wgslsmith_index_u32(~global4.b.b.x, 24u)]), ~(u_input.d.xww >> (u_input.a.wzy % vec3<u32>(32u))), ~(u_input.b.x | 22580u), global4.a).a.c, !(!select(vec2<bool>(global4.b.c, false), vec2<bool>(false, false), any(vec2<bool>(false, false)))), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * _wgslsmith_f_op_f32(exp2(global1.x)))), global4.b)));
    let var_1 = 12580u;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, global4.b.b.x), var_1, _wgslsmith_clamp_u32(u_input.a.x, 1u, global4.b.b.x & 1u)), max(~_wgslsmith_div_vec3_u32(u_input.b, u_input.a.xwx), firstLeadingBit(vec3<u32>(u_input.b.x, global4.b.b.x, var_1)) | ~u_input.a.wzw), func_2(func_2(Struct_2(u_input.d.x, global4.b.b, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true), -vec3<i32>(-1i, global4.b.a, global4.b.a), 71627u, 188f).a, u_input.d.xyx | vec3<i32>(-1i, 0i, 0i), 50445u, -1484f).a.c), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-global4.b.a, firstLeadingBit(2147483647i), 46492i), reverseBits(vec3<i32>(-2147483647i, global4.b.a, u_input.d.x) << (u_input.b % vec3<u32>(32u))), true), -vec3<i32>(-26363i, -16231i, abs(u_input.c))), 2147483647i & (u_input.c << (select(global4.b.b.x, var_1, any(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(global4.b.b.x, 24u)]))) % 32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(abs(u_input.d.wxy), -u_input.d.wwy), vec3<i32>(_wgslsmith_mult_i32(u_input.e, 27905i), 0i, -u_input.c)), u_input.d.yyy));
}

