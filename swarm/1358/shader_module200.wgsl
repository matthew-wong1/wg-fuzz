struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 28492i;

var<private> global1: bool = false;

var<private> global2: Struct_2 = Struct_2(false, true, vec3<f32>(743f, 514f, 581f), vec2<f32>(-211f, -1618f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = !vec4<bool>((global2.a | true) != any(!vec2<bool>(global2.a, global2.a)), true, global2.b, !global2.b);
    global0 = _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.b, _wgslsmith_sub_i32(u_input.d.x, u_input.b)), 6110i ^ u_input.b), -2147483647i, 2147483647i);
    global1 = !var_0.x;
    var_0 = vec4<bool>(any(!(!(!var_0.xxz))), !all(!(!vec4<bool>(global2.a, global2.a, false, false))), global2.a, all(select(var_0.wy, !var_0.ww, vec2<bool>(any(vec4<bool>(false, var_0.x, false, true)), true))));
    var var_1 = Struct_1(!(!any(select(vec2<bool>(var_0.x, true), var_0.xz, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_div_i32(0i, u_input.b)), u_input.d.x, max(i32(-1i) * -1i, i32(-1i) * -47611i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.d.x)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 2147483647i), u_input.d), u_input.d)), !select(vec4<bool>(true, true, all(vec2<bool>(global2.b, var_0.x)), !var_0.x), !(!vec4<bool>(global2.a, var_0.x, false, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(global2.a, false, var_0.x, var_0.x), true)), -12133i);
    return 73075i;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1((-35900i | (func_3() << (u_input.a % 32u))) < _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(u_input.c, -18089i)), func_3()), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(34028i | u_input.c, firstLeadingBit(46769i), -46074i), u_input.d.xzx)), !vec4<bool>(any(vec4<bool>(global2.b, global2.a, true, global2.a)), !all(vec4<bool>(global2.a, global2.b, false, global2.b)), false, !any(vec3<bool>(global2.a, true, true))), 0i);
    var_0 = Struct_1(global2.a, u_input.b, !(!select(var_0.c, !var_0.c, var_0.c)), u_input.c);
    let var_1 = var_0.c.wyw;
    let var_2 = Struct_3(Struct_1(true, reverseBits(_wgslsmith_dot_vec2_i32(u_input.d.wy, u_input.d.xw)) << (~u_input.a % 32u), select(var_0.c, vec4<bool>(!var_1.x, var_1.x, u_input.a != u_input.a, global2.a), select(select(var_0.c, var_0.c, var_0.c), !var_0.c, !vec4<bool>(true, true, var_1.x, var_1.x))), (u_input.c & 8405i) ^ var_0.d), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * 929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1813f, global2.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c.x - global2.d.x)))))), Struct_2(var_0.a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(global2.d.x - 1132f), 285f)), vec2<f32>(1191f, -642f)), vec4<bool>(!var_0.c.x, !(-var_0.b >= -33157i), var_1.x, any(select(select(var_1.yy, var_1.xz, true), select(vec2<bool>(true, false), vec2<bool>(global2.b, true), var_0.c.x), select(var_0.c.zz, vec2<bool>(false, true), vec2<bool>(false, false))))));
    let var_3 = var_0.c.xw;
    return ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 108285u, 2699u) << (vec3<u32>(u_input.a, 27511u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, 1u, 71976u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 25392u, 87546u), vec3<u32>(0u, 127146u, u_input.e))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> i32 {
    global0 = u_input.c;
    let var_0 = arg_0.x;
    global1 = var_0;
    var var_1 = (_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(func_2(), vec3<u32>(18280u, arg_2.x, 4294967295u)), abs(vec3<u32>(arg_1, 7013u, arg_2.x)) << (~vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)), ~abs(vec3<u32>(86u, arg_1, 1u))) >> (max(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, 0u, u_input.a), vec3<u32>(1u, 4294967295u, 1u) >> (vec3<u32>(1u, arg_1, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.a, arg_1)), vec3<u32>(12215u, abs(19899u), u_input.e)) % vec3<u32>(32u))) << (vec3<u32>(~(~(arg_1 << (0u % 32u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 89383u, 4294967295u, 26527u), vec4<u32>(14849u, u_input.a, u_input.e, 35651u)), ~vec4<u32>(arg_2.x, u_input.e, 62061u, 8100u)), _wgslsmith_clamp_u32(u_input.e, 1u, ~_wgslsmith_add_u32(1u, 5387u))) % vec3<u32>(32u));
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2, ~arg_2), arg_1, countOneBits(~(43492u & arg_1))), reverseBits(abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 43705u), vec3<u32>(var_1.x, 0u, arg_1)))));
    return -22366i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(false, (u_input.a > 5305u) && global2.a, global2.c, _wgslsmith_f_op_vec2_f32(round(global2.c.xx)));
    let var_0 = abs(-39852i);
    var var_1 = global2.d.x;
    let var_2 = ~u_input.c;
    let var_3 = func_1(vec4<bool>(!(!global2.b), global2.b, global2.a, !(!all(vec3<bool>(global2.a, true, false)))), ~u_input.a, ~((max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 54017u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(0u, 73920u))) << (vec2<u32>(u_input.e << (u_input.e % 32u), ~69836u) % vec2<u32>(32u))), u_input.d.wwx);
    let var_4 = u_input.a;
    global1 = all(!(!vec3<bool>(any(vec4<bool>(global2.b, global2.b, true, global2.b)), global2.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_4, 44147u, 4294967295u), vec3<u32>(1u, 4294967295u, var_4))), vec3<u32>(~firstTrailingBit(46292u), 0u, var_4)));
}

