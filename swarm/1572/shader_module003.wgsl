struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(-247f, false, 4294967295u, vec3<bool>(false, false, true)), vec3<bool>(true, true, true), Struct_1(-1956f, false, 1u, vec3<bool>(false, true, false)), Struct_1(-1603f, true, 25524u, vec3<bool>(true, false, false)), Struct_1(298f, false, 1u, vec3<bool>(true, true, true)));

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(arg_0.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.a + global2.a), _wgslsmith_f_op_vec3_f32(-arg_0.a)))));
    let var_1 = global1.a.b || false;
    global1 = Struct_2(global2.d, global2.b, Struct_1(_wgslsmith_f_op_f32(-global2.a.x), all(vec4<bool>(any(vec3<bool>(global1.a.d.x, true, arg_0.b.x)), true, true, true)), _wgslsmith_div_u32(~global2.d.c, max(global1.a.c, 39066u)) >> (5968u % 32u), arg_0.b), arg_0.d, arg_0.d);
    var var_2 = arg_0.d.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f * _wgslsmith_f_op_f32(1930f - arg_0.a.x)))), all(vec2<bool>(true, global1.c.d.x && true)), u_input.c, global2.b);
    return global2.d.c;
}

fn func_2() -> Struct_3 {
    let var_0 = ~vec4<u32>(~countOneBits(global2.d.c), global2.d.c, ~4294967295u, func_3(Struct_3(_wgslsmith_f_op_vec3_f32(select(global2.a, global2.a, true)), vec3<bool>(false, true, global1.c.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(global2.c.x, -2147483647i, 0i, u_input.a.x), global2.c), Struct_1(global2.a.x, global2.b.x, 1u, vec3<bool>(global2.d.b, global2.d.d.x, global1.e.b)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(global2.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.a, -594f, 1370f))) - vec3<f32>(-1311f, _wgslsmith_div_f32(global1.a.a, 679f), _wgslsmith_f_op_f32(-global1.d.a)))), select(select(global1.c.d, !vec3<bool>(global1.d.d.x, global2.d.d.x, false), select(vec3<bool>(global2.b.x, false, global2.d.b), !global1.a.d, true)), vec3<bool>(any(select(global2.b.xy, vec2<bool>(true, false), false)), !global2.d.d.x, global1.a.c != _wgslsmith_mod_u32(1u, u_input.c)), true), -(-abs(vec4<i32>(-17000i, u_input.d, 2147483647i, u_input.b.x)) ^ ~(global2.c ^ vec4<i32>(u_input.b.x, 0i, global2.c.x, u_input.d))), Struct_1(349f, (u_input.c | u_input.c) != 44258u, ~_wgslsmith_add_u32(global2.d.c, global2.d.c), select(!vec3<bool>(global2.d.d.x, global1.c.d.x, global2.d.d.x), global2.d.d, true)));
    var var_2 = vec4<u32>(1u, firstLeadingBit(72819u), ~(~(~global2.d.c)), 1u);
    var var_3 = global2.d.d.x && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, global2.a.x, var_1.b.x)) - _wgslsmith_f_op_f32(exp2(var_1.d.a))) - 1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.a))) * -464f));
    var_2 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(~4294967295u, reverseBits(~(~var_1.d.c))), ~(~global1.c.c) << (~_wgslsmith_dot_vec4_u32(var_0, var_0) % 32u), 0u);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(770f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-673f + -147f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + _wgslsmith_f_op_f32(-global2.a.x)), var_1.a.x)), select(vec3<bool>(global1.e.b, 1f != _wgslsmith_div_f32(global1.e.a, global2.d.a), true), var_1.b, !var_1.b.x), -vec4<i32>(-39124i, _wgslsmith_sub_i32(var_1.c.x & global2.c.x, 1i ^ u_input.a.x), u_input.d, abs(_wgslsmith_div_i32(var_1.c.x, var_1.c.x))), global1.d);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(func_2(), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.x))))), 2147483647i < (-1i | global2.c.x), ~(~_wgslsmith_add_u32(global2.d.c, global2.d.c)), func_2().d.d), _wgslsmith_f_op_vec2_f32(max(global2.a.xx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(899f, global1.d.a) - global2.a.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), global2.a.zz, global2.d.d.zy)), global2.a.xx))))), firstTrailingBit(vec3<u32>(~global2.d.c, _wgslsmith_add_u32(global2.d.c, 56020u), ~_wgslsmith_add_u32(u_input.c, global1.a.c))), global1.a);
    let var_1 = var_0.a.d.b;
    global2 = func_2();
    let var_2 = vec2<u32>(12707u, global2.d.c >> (~u_input.c % 32u));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-var_0.e.a), true, !all(vec4<bool>(false, global2.d.d.x, var_1, func_2().b.x)), _wgslsmith_clamp_i32(-8131i << (global2.d.c % 32u), var_0.a.c.x, -2147483647i));
    return Struct_4(func_2(), func_2().d, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.a, var_0.c.x), -134f), 319f), var_0.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -791f), func_2().d.d.x, u_input.c, !var_0.e.d));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(func_1().a.d, vec3<bool>(any(vec4<bool>(global2.d.d.x, arg_0.e.b, !global1.d.d.x, true)), func_2().d.b, global1.d.d.x), global1.d, global1.a, global1.a);
    var_0 = Struct_2(var_0.d, vec3<bool>(!any(!arg_0.b.d.yz), !arg_0.e.d.x, true), global1.a, arg_0.a.d, Struct_1(global2.a.x, any(select(vec3<bool>(true, global1.a.b, true), !arg_2, vec3<bool>(global2.b.x, global2.d.d.x, false))), arg_0.b.c, func_1().b.d));
    var var_1 = abs(0u ^ global1.e.c) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(86074u, ~global2.d.c, ~global1.c.c, ~var_0.d.c) & ((vec4<u32>(global2.d.c, arg_0.e.c, 4294967295u, 4294967295u) & vec4<u32>(arg_0.d.x, 21622u, global1.c.c, 4294967295u)) ^ vec4<u32>(58045u, u_input.c, 53975u, arg_0.e.c)), vec4<u32>(firstTrailingBit(~global1.d.c), u_input.c, global2.d.c, 0u));
    var_0 = Struct_2(global1.d, global2.d.d, Struct_1(arg_0.a.d.a, all(arg_0.e.d.yy), select(_wgslsmith_div_u32(global2.d.c, ~global1.c.c), 0u, true), vec3<bool>(!arg_1, ~arg_0.a.c.x > -u_input.b.x, var_0.e.d.x)), global1.c, global1.c);
    let var_2 = !(false || arg_0.a.b.x);
    return func_1().e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(global2.d.a, global2.d.b, 4294967295u, vec3<bool>(false, false, (global2.d.d.x != global1.e.d.x) & any(global2.b))), global1.d.d, global2.d, func_4(func_1(), global1.d.b, select(!vec3<bool>(global2.d.b, false, global2.d.d.x), global2.d.d, func_2().d.d)), Struct_1(_wgslsmith_f_op_f32(-1197f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.a * global2.a.x))), all(vec2<bool>(true, true)), 957u, vec3<bool>(all(func_2().b.yx), global1.a.d.x, any(select(vec4<bool>(global1.a.b, false, false, true), vec4<bool>(false, true, global1.a.d.x, false), vec4<bool>(false, false, global2.d.d.x, global1.b.x))))));
    var var_0 = func_1().a;
    let var_1 = 701f;
    let var_2 = -((global2.c << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.c, 42804u, 1u, 1u), vec4<u32>(15757u, global1.a.c, var_0.d.c, 4294967295u)), global1.e.c, 25985u, 66785u) % vec4<u32>(32u))) & vec4<i32>(-_wgslsmith_clamp_i32(-11904i, u_input.a.x, 0i), -1i, 1i, abs(~1i)));
    var_0 = func_1().a;
    var var_3 = var_0.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(4294967295u, u_input.c, 1u, 1u)) | ~(~vec4<u32>(28249u, global1.d.c, global1.e.c, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1247f, var_1, var_1, var_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a, global1.e.a, 905f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, global2.a.x, global1.e.a, global2.d.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1632f, var_1, var_0.a.x, 954f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) - _wgslsmith_f_op_f32(-global1.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1609f + var_1)) - _wgslsmith_f_op_f32(-726f * var_0.d.a)) * -736f), ~(~vec4<u32>(61573u, 1u, u_input.c ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.c, 0u, var_0.d.c, global1.c.c), vec4<u32>(4696u, var_0.d.c, global2.d.c, global1.d.c)))));
}

