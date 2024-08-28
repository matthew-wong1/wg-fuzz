struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(359f, 260f);

var<private> global2: u32 = 1u;

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(!global3.d.x, false | (_wgslsmith_sub_i32(-12612i, abs(arg_0.a)) <= 47258i), !any(arg_0.c.d), true);
    let var_2 = arg_0.c;
    return -3786i;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> bool {
    var var_0 = select(arg_2, -vec4<i32>(-45326i, arg_2.x, arg_2.x, 25542i), vec4<bool>(true, false, !global3.d.x, !(any(vec2<bool>(global3.d.x, arg_1)) || any(vec4<bool>(global3.d.x, arg_1, true, arg_1)))));
    var var_1 = reverseBits(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2, arg_2), vec4<i32>(var_0.x, 13587i, var_0.x, arg_2.x) | vec4<i32>(arg_2.x, 46504i, -24613i, arg_2.x))), arg_2));
    var var_2 = true;
    var_0 = arg_2;
    let var_3 = abs(17464i);
    return select(!all(global3.d) & !(!(global3.a || false)), -992f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global3.b - 575f)))), false);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = false;
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, global3.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, 249f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1556f, -1136f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(598f, global3.b) * vec2<f32>(340f, 781f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-256f, global1.x), vec2<f32>(global1.x, 525f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    var var_1 = vec4<bool>(func_3(global1.x, false, select(vec4<i32>(countOneBits(0i), func_2(Struct_2(-20781i, global3.d.yy, Struct_1(false, -781f, u_input.b, global3.d)), Struct_1(false, -1000f, global3.c, vec3<bool>(true, global3.a, global3.a))), -arg_0, -arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(32124i, -2147483647i, arg_0, -22391i), vec4<i32>(arg_0, 42349i, -33344i, arg_0)) ^ (vec4<i32>(-6652i, arg_0, -69399i, arg_0) ^ vec4<i32>(arg_0, -2147483647i, arg_0, arg_0)), vec4<bool>(global3.a, false, global3.d.x, !global3.d.x))), true, true, global3.a);
    var_1 = vec4<bool>(firstTrailingBit(arg_0) >= (firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -49537i, 15433i), vec3<i32>(arg_0, arg_0, -1i))) | arg_0), var_1.x & var_1.x, global3.d.x, global3.d.x);
    var var_2 = var_1.yw;
    return Struct_2(_wgslsmith_mod_i32(countOneBits(abs(_wgslsmith_div_i32(arg_0, arg_0))), -6802i), select(select(select(!global3.d.yy, select(vec2<bool>(var_2.x, global3.a), vec2<bool>(var_1.x, global3.d.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(false, false)), vec2<bool>(true, var_1.x), vec2<bool>(global3.d.x, global3.a)), !(!global3.d.zx), select(!vec2<bool>(global3.d.x, global3.d.x), var_1.wz, !global3.d.xx)), Struct_1(false, 350f, global3.c, select(var_1.xyw, vec3<bool>(var_1.x, global3.b < 268f, true), vec3<bool>(!global3.d.x, true, false))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, 8514i, arg_0.a, -2147483647i), vec4<i32>(10764i, -2147483647i, 809i, arg_0.a))), arg_0.a << (u_input.a % 32u)), select(func_1(1i).b, select(vec2<bool>(true, false || arg_0.c.a), arg_0.c.d.xy, all(!vec3<bool>(true, false, arg_0.c.d.x))), !(!(arg_0.c.b <= 509f))), func_1(firstLeadingBit(arg_0.a)).c);
    var var_1 = var_0.c;
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, var_0.c.b));
    let var_2 = 0u;
    let var_3 = arg_0.c;
    return func_1(i32(-1i) * -2147483647i).c;
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = func_1(_wgslsmith_div_i32(-_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(46835i, 1i, -26255i)), min(-2147483647i, 1i)));
    global0 = var_0.c.a;
    var var_1 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b, var_0.c.c, u_input.a)), vec3<u32>(4294967295u, 71855u, func_1(_wgslsmith_mod_i32(var_0.a, var_0.a)).c.c)) | ~vec3<u32>(func_4(Struct_2(var_0.a, var_0.b, arg_0)).c, arg_0.c, _wgslsmith_sub_u32(0u ^ global3.c, arg_0.c));
    var var_2 = func_1(min(var_0.a, ~(~var_0.a)));
    var var_3 = Struct_2(var_0.a, vec2<bool>(arg_0.d.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.c.b)) <= _wgslsmith_f_op_f32(-global3.b)), Struct_1(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-global3.b)) <= -2315f, -554f, 27822u, vec3<bool>(any(func_1(17759i).c.d), true, _wgslsmith_f_op_f32(trunc(var_0.c.b)) > 1156f)));
    return StorageBuffer(~var_2.a | var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - -608f), global1.x), -1325f, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, 0i) | -(~vec2<i32>(-1i, var_0.a)), -vec2<i32>(var_0.a, _wgslsmith_mult_i32(1i, var_2.a)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, 31880i), vec2<i32>(-2147483647i, var_0.a))) | vec2<i32>(1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(1i)));
}

