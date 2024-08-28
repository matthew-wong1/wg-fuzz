struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, false, false, false), 0u, Struct_1(vec2<i32>(5152i, 14374i), 19223u, 1u, -164f), Struct_1(vec2<i32>(56236i, i32(-2147483648)), 4294967295u, 1u, 141f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec2<i32> {
    let var_0 = abs(vec2<i32>(reverseBits(~arg_3), -64641i));
    global0 = Struct_2(vec4<bool>(arg_1.a.x, !(countOneBits(arg_1.d.b) > (u_input.c.x ^ 18957u)), false, any(!select(vec3<bool>(global0.a.x, true, true), global0.a.wzz, vec3<bool>(false, arg_2, arg_2)))), arg_0.d.b, Struct_1(vec2<i32>(global0.c.a.x, _wgslsmith_div_i32(-45885i, u_input.b.x)), arg_1.b, arg_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.d)))), Struct_1(vec2<i32>(arg_1.d.a.x, 1i), 1u, 4294967295u, 291f));
    var var_1 = Struct_2(global0.a, 1u, global0.d, Struct_1(~arg_0.c.a, global0.d.b, arg_1.d.b, _wgslsmith_f_op_f32(-global0.d.d)));
    let var_2 = Struct_4(~firstTrailingBit(~vec4<u32>(var_1.b, u_input.d, global0.b, 46867u)), u_input.d, select(global0.a.yy, select(!(!arg_0.a.yy), !arg_0.a.wy, select(arg_1.a.zy, vec2<bool>(true, true), !vec2<bool>(arg_1.a.x, arg_2))), select(global0.a.wy, var_1.a.wy, !vec2<bool>(false, var_1.a.x))), Struct_3(arg_0.d, vec2<bool>(true, true), -1221f, _wgslsmith_mult_i32(_wgslsmith_div_i32(-24125i, arg_3), firstLeadingBit(-21664i))), ~reverseBits(vec4<i32>(global0.c.a.x, 43476i, arg_0.c.a.x, 0i)) | ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, -12042i, -49479i, -1i)), abs(vec4<i32>(arg_0.d.a.x, 31753i, -22174i, 26885i))));
    let var_3 = vec4<bool>(false, any(!(!(!var_1.a.wzy))), !var_1.a.x | (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.d.c, 0u), vec3<u32>(var_2.a.x, 40709u, arg_0.c.b)) <= ~(1u << (var_2.b % 32u))), !any(global0.a.zxw));
    return arg_0.d.a;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = Struct_2(global0.a, _wgslsmith_mod_u32(global0.b, ~u_input.d), Struct_1(select(func_3(Struct_2(global0.a, 1339u, Struct_1(vec2<i32>(global0.d.a.x, u_input.a), 1u, 17162u, global0.c.d), Struct_1(vec2<i32>(-50595i, u_input.b.x), arg_0, 16423u, -343f)), Struct_2(vec4<bool>(false, global0.a.x, global0.a.x, true), u_input.d, Struct_1(vec2<i32>(global0.c.a.x, u_input.a), u_input.d, arg_0, -215f), Struct_1(vec2<i32>(2147483647i, global0.d.a.x), arg_0, global0.b, -2164f)), global0.c.d == global0.d.d, ~0i), _wgslsmith_clamp_vec2_i32(global0.c.a, u_input.b.zz, vec2<i32>(u_input.a, 1i)), true), 1u, arg_0, 753f), global0.c);
    var var_0 = Struct_2(vec4<bool>(!(global0.a.x || any(vec2<bool>(global0.a.x, false))), !global0.a.x, global0.a.x, any(global0.a)), 0u, global0.d, global0.c);
    let var_1 = firstTrailingBit(global0.d.a.x);
    let var_2 = !all(vec4<bool>(!(arg_0 < u_input.d), global0.a.x, var_0.a.x, select(var_0.a.x, var_0.a.x, var_0.a.x) != global0.a.x));
    var var_3 = Struct_5(vec3<f32>(global0.c.d, _wgslsmith_f_op_f32(global0.c.d - _wgslsmith_f_op_f32(min(1832f, 652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d * var_0.d.d)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.d, var_0.c.d), _wgslsmith_f_op_f32(exp2(global0.c.d))));
    return firstTrailingBit(~arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(0i, 0i ^ -_wgslsmith_div_i32(0i, global0.d.a.x)), _wgslsmith_sub_u32(4294967295u, func_2(22472u)), u_input.d & 0u, global0.d.d);
    let var_1 = Struct_3(global0.d, global0.a.wx, -235f, global0.c.a.x);
    let var_2 = Struct_4(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36144u, ~u_input.c.x, _wgslsmith_add_u32(u_input.d, var_1.a.b), _wgslsmith_add_u32(global0.c.c, 45602u)), ~min(vec4<u32>(global0.c.c, var_1.a.c, global0.c.b, u_input.c.x), vec4<u32>(0u, global0.b, var_0.c, 47555u)), ~(~vec4<u32>(0u, 33293u, u_input.c.x, var_1.a.c))), ~vec4<u32>(_wgslsmith_mod_u32(43800u, 4294967295u), 1u, abs(var_1.a.c), 7609u)), _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(431u, 4294967295u, global0.c.b, 1u), vec4<u32>(1u, 44035u, global0.b, var_0.c)), ~vec4<u32>(u_input.c.x, 17349u, u_input.d, 10573u))), abs(abs(var_1.a.b))), !(!select(var_1.b, !vec2<bool>(global0.a.x, global0.a.x), global0.a.x != global0.a.x)), Struct_3(Struct_1(-vec2<i32>(u_input.b.x, var_1.a.a.x), ~var_1.a.c, global0.d.b, var_0.d), select(vec2<bool>(global0.a.x, true), select(global0.a.xx, vec2<bool>(true, global0.a.x), global0.a.x && false), var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(1824f * -1143f)))), global0.c.a.x), vec4<i32>(_wgslsmith_mod_i32(-50332i, -1i), -1i, firstTrailingBit(abs(_wgslsmith_clamp_i32(var_0.a.x, global0.c.a.x, 1i))), -75459i));
    var var_3 = global0.d;
    let var_4 = ~(var_2.a.x | reverseBits(19167u));
    return var_2.d.a;
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    global0 = Struct_2(global0.a, func_2(1u), Struct_1(vec2<i32>(-5748i, u_input.a), ~global0.b, ~func_2(~4294967295u), 361f), Struct_1(arg_0.a.a << ((u_input.c ^ u_input.c) % vec2<u32>(32u)), 58071u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x | 1u, _wgslsmith_div_u32(global0.c.b, 0u), u_input.d), 94009u), _wgslsmith_f_op_f32(f32(-1f) * -654f)));
    let var_0 = global0.c.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(round(global0.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.d))))));
    var var_2 = vec3<i32>(~(~(~(~arg_0.a.a.x))), firstLeadingBit(2147483647i), global0.d.a.x);
    var_2 = max(abs(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.d, var_2.x), u_input.b.x), u_input.b.x, abs(-var_2.x))), u_input.b);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global0.c.d, _wgslsmith_f_op_f32(-global0.d.d), all(vec2<bool>(global0.a.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1190f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.d.d), 622f, global0.d.d, -939f)) * _wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_1(), vec2<bool>(global0.a.x, global0.a.x), 483f, -2147483647i)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.d), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(global0.c, vec2<bool>(false, true), 453f, -1i))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2253f - global0.d.d)), 1019f, global0.d.d)));
    var var_1 = 831f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_1(), global0.a.xz, _wgslsmith_f_op_f32(-global0.c.d), abs(u_input.a)))).yx, var_0.zz)), ~global0.b, vec3<i32>(-1i) * -u_input.b, global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-512f, global0.c.d)), global0.c.d));
}

