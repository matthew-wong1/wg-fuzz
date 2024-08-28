struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(Struct_1(1u, false, 1679f), vec4<bool>(false, false, true, false), 769f, Struct_1(0u, true, -1652f));

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = Struct_2(Struct_1(5271u, global1.b.x, -640f), global1.b, global1.c, Struct_1(_wgslsmith_sub_u32(~15902u, ~global1.d.a) ^ 0u, !any(vec4<bool>(false, true, arg_0.b, true)), _wgslsmith_f_op_f32(exp2(global1.a.c))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(u_input.a.zw, _wgslsmith_mod_vec2_u32(~u_input.a.zx, vec2<u32>(1u, 1u)))), vec2<u32>(global1.a.a | ~var_0.d.a, _wgslsmith_sub_u32(arg_0.a, 4294967295u))), 12u)];
    global0 = array<u32, 16>();
    let var_2 = Struct_1(global1.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2389f * global2.d.c) * global2.d.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c + arg_1), _wgslsmith_f_op_f32(-var_1.c))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(f32(-1f) * -125f)) * _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(trunc(global1.d.c)))), arg_0.c);
    let var_3 = _wgslsmith_clamp_vec3_i32(-(~_wgslsmith_mod_vec3_i32(-vec3<i32>(-24796i, 2147483647i, 1i), firstLeadingBit(vec3<i32>(1i, -2147483647i, 0i)))), -reverseBits(~firstTrailingBit(vec3<i32>(u_input.b, u_input.b, 1i))), -((vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ vec3<i32>(_wgslsmith_clamp_i32(u_input.b, -3661i, -6182i), u_input.b, u_input.b)));
    return 2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = select(arg_3, vec3<bool>(true, true, true), global1.d.b || global2.d.b);
    var var_1 = global1.a;
    let var_2 = 214f;
    global0 = array<u32, 16>();
    let var_3 = -1i & ((-arg_1.x << (global2.d.a % 32u)) & func_3(Struct_1(4294967295u | global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false, _wgslsmith_div_f32(global2.d.c, global1.d.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(318f)))));
    return global2.d;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = 235f;
    let var_1 = global2.b.x;
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(847f, -1535f, global2.c) - vec3<f32>(global1.a.c, var_0, global2.a.c)))), vec4<i32>(_wgslsmith_mult_i32(u_input.b, ~arg_0), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, arg_0), select(vec2<i32>(u_input.b, arg_0), vec2<i32>(u_input.b, -21058i), vec2<bool>(global2.b.x, false))), ~_wgslsmith_mult_i32(-44472i, u_input.b), 2147483647i), firstLeadingBit(_wgslsmith_add_i32(arg_0, -2368i)) ^ select(65738i, -2147483647i, any(vec2<bool>(false, true))), !vec3<bool>(true, 1u == global1.a.a, false)), vec4<bool>(true, any(vec3<bool>(false, false, !global1.b.x)), true, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(482f, var_0, 1536f), vec3<f32>(var_0, global2.d.c, 536f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 481f, var_0) - vec3<f32>(207f, var_0, 1539f))), ~firstTrailingBit(vec4<i32>(0i, arg_0, u_input.b, u_input.b)), (u_input.b >> (u_input.a.x % 32u)) ^ u_input.b, global2.b.wwx).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global2.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - -154f))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, var_0, 1445f)))))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, -45401i, -1i, u_input.b) >> (vec4<u32>(23504u, 47031u, global2.d.a, 1u) % vec4<u32>(32u))), -vec4<i32>(24331i, arg_0, arg_0, arg_0)), countOneBits(firstTrailingBit(u_input.b)), global2.b.xxz));
    var var_3 = Struct_2(global2.d, !select(select(vec4<bool>(global1.b.x, true, var_2.d.b, false), var_2.b, !vec4<bool>(false, false, var_2.b.x, global2.d.b)), var_2.b, select(select(vec4<bool>(global2.a.b, global1.a.b, var_2.b.x, global2.b.x), vec4<bool>(global2.d.b, global1.b.x, global1.a.b, false), vec4<bool>(var_2.b.x, false, global2.a.b, true)), vec4<bool>(true, global1.b.x, false, global1.d.b), !global2.b)), var_0, global2.d);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(min(vec2<i32>(arg_0, u_input.b), vec2<i32>(u_input.b, -3855i))), vec2<i32>(~53795i, _wgslsmith_clamp_i32(-9301i, 31573i, 2147483647i))), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_0, u_input.b), ~vec2<i32>(1i, arg_0)) & min(firstLeadingBit(vec2<i32>(arg_0, 2147483647i)), ~vec2<i32>(arg_0, arg_0))), select(~(-4562i), 1i, global1.a.b), -16973i);
    return Struct_2(global1.d, select(!(!select(vec4<bool>(false, var_3.d.b, false, global1.d.b), vec4<bool>(true, false, true, var_2.a.b), var_3.d.b)), !(!global1.b), vec4<bool>(!global1.b.x, true, global1.a.b, var_3.a.b)), _wgslsmith_f_op_f32(1101f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1513f, global1.a.c))), _wgslsmith_f_op_f32(global2.a.c * _wgslsmith_f_op_f32(-var_2.a.c)), !global1.d.b))), global2.d);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_1.yy;
    var var_1 = Struct_2(func_1(i32(-1i) * -2147483647i).a, select(global1.b, vec4<bool>(func_2(vec3<f32>(-662f, -1310f, global2.c), vec4<i32>(var_0.x, -3937i, arg_0, arg_0), arg_1.x, global2.b.yxx).b == arg_2.d.b, (global2.c < -1347f) & !arg_3.b, 1600f < _wgslsmith_f_op_f32(global1.d.c + global2.d.c), global1.a.c > global1.c), global0[_wgslsmith_index_u32(arg_2.d.a, 16u)] <= (func_1(var_0.x).a.a | 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1002f, -472f)))), Struct_1(4294967295u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_2.c, arg_3.c, 1617f), vec4<i32>(arg_0, -12980i, arg_1.x, var_0.x), 28240i, vec3<bool>(arg_3.b, arg_3.b, true)).c + -1650f) - global1.d.c)));
    var var_2 = 0u;
    var var_3 = var_1.d.b && (global2.d.b && (true | select(16077u >= global2.d.a, !arg_2.b.x, 1i <= arg_1.x)));
    let var_4 = _wgslsmith_f_op_f32(min(global1.c, 1765f));
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    global0 = array<u32, 16>();
    let var_0 = vec4<f32>(-1187f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -795f)), -730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-875f))));
    global0 = array<u32, 16>();
    let var_1 = min(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_mult_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-11222i, u_input.b, 46334i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 2538i), vec3<i32>(24094i, -38252i, u_input.b))))), -1i);
    global1 = arg_1;
    return min(~(~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, u_input.b), vec4<i32>(u_input.b, -33183i, u_input.b, u_input.b)))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<bool>(global1.b.x, u_input.a.x > 44028u, false), func_4(_wgslsmith_sub_i32(u_input.b, u_input.b), vec3<i32>(u_input.b, _wgslsmith_add_i32(1i, -1i), ~u_input.b) ^ vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.b, -63504i), -29575i, 1i), func_1(-3484i), Struct_1(4294967295u, true, global1.a.c)));
    global0 = array<u32, 16>();
    var var_1 = vec4<f32>(1396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.c) + -1000f)) + global1.d.c), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.d.c)), _wgslsmith_f_op_f32(trunc(1846f))), _wgslsmith_f_op_f32(func_4(21483i, vec3<i32>(u_input.b, 0i, -1i), Struct_2(Struct_1(12034u, global1.a.b, global2.c), global1.b, global1.d.c, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], global2.b.x, 1000f)), Struct_1(0u, global1.b.x, global2.c)).d.c + 504f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.d.c + 638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a.c))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(382f + _wgslsmith_f_op_f32(-global1.c)) * 704f) - -1000f));
    global3 = array<Struct_1, 12>();
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(step(var_1.yzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c, global1.d.c, global2.c)))), vec4<i32>(~(-1i), _wgslsmith_mod_i32(u_input.b, -1i ^ u_input.b), ~(0i >> (global1.d.a % 32u)), u_input.b), u_input.b, select(vec3<bool>(any(vec2<bool>(global2.d.b, global1.b.x)), true, true), select(func_1(23668i).b.ywz, !vec3<bool>(global1.d.b, false, false), !global1.b.x), func_4(u_input.b, min(vec3<i32>(u_input.b, 11320i, 1i), vec3<i32>(u_input.b, -81965i, -2147483647i)), func_1(-2024i), global2.d).b.x)), global2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.c))), global3[_wgslsmith_index_u32(global2.d.a, 12u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c, -2370f, global2.a.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.a.c)), _wgslsmith_f_op_f32(var_2.d.c - global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c)), 339f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x - var_2.d.c), global1.c, _wgslsmith_f_op_f32(global1.d.c - -207f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~(abs(vec4<i32>(u_input.b, u_input.b, 0i, 28751i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -1i, -2147483647i, 2147483647i), vec4<i32>(325i, u_input.b, -3785i, u_input.b), vec4<i32>(1i, u_input.b, -21962i, 2147483647i))), countOneBits(-min(vec4<i32>(u_input.b, -1i, -29850i, u_input.b), vec4<i32>(22595i, u_input.b, u_input.b, u_input.b))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, -2147483647i, u_input.b, 19953i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(false, global1.a.b, true, global2.d.b)), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9675u, 0u, u_input.a.x, 34535u), vec4<u32>(var_2.a.a, 4294967295u, 1u, global1.a.a)), ~24455u, 2308u >> (global0[_wgslsmith_index_u32(4294967295u, 16u)] % 32u), 4294967295u | global1.d.a) % vec4<u32>(32u))), vec3<i32>(~u_input.b, -33532i, u_input.b), ~1u, global1.d.a);
}

