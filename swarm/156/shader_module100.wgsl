struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 3461f;

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = u_input.c;
    let var_1 = min(max(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(41551u, 53728u, u_input.b, u_input.c)), vec4<u32>(u_input.c, u_input.c ^ u_input.c, u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.c))), vec4<u32>(max(~u_input.b, _wgslsmith_mult_u32(u_input.b, 93113u)), ~abs(4294967295u), u_input.c, u_input.c)), reverseBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 25753u, 88238u, 25015u), ~vec4<u32>(u_input.c, 69524u, u_input.b, u_input.c)))));
    global0 = -1989f;
    var_0 = var_1.x;
    let var_2 = ~_wgslsmith_sub_vec3_u32(~(vec3<u32>(4294967295u, var_1.x, var_1.x) ^ var_1.zyy), min(var_1.xwx, min(var_1.yzz, vec3<u32>(u_input.c, u_input.c, 41952u)))) >> (var_1.xwy % vec3<u32>(32u));
    return !select(global1.xz, global1.wy, global1.wy);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_i32(u_input.a.x, ~(-30022i)) >> (~6524u % 32u);
    var var_1 = select(global1.xy, vec2<bool>(true, true), all(vec2<bool>(all(global1.zy), arg_0.b)));
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(452f * _wgslsmith_f_op_f32(-arg_0.a)), all(!(!func_3())), var_2.c, arg_0.d, firstLeadingBit(vec2<u32>(min(arg_0.e.x, var_2.c.x) | ~var_2.c.x, _wgslsmith_div_u32(1u, var_2.e.x))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_3.a, -1396f) + vec3<f32>(243f, -1487f, 1584f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(606f, var_2.a, 667f) * vec3<f32>(arg_0.a, arg_0.a, 521f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.a, -534f, arg_0.a), vec3<f32>(268f, 3124f, -446f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, 1619f, var_3.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1354f, arg_0.a, 1824f), vec3<f32>(arg_0.a, -427f, var_2.a), global1.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.a, 347f, 1776f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -414f, -1501f) - vec3<f32>(var_3.a, var_2.a, arg_0.a)))), global1.xxx))), Struct_2(!(false && global1.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.d, abs(u_input.d))), var_2), var_3, -vec2<i32>(-34037i, u_input.d), any(vec3<bool>(true, true, true)));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = ~arg_3.c.c;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(2147483647i >> (func_2(arg_3.c) % 32u), -arg_3.b ^ arg_2.a), _wgslsmith_mult_i32(abs(arg_3.b), arg_2.a) ^ 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 0i)), vec4<i32>(u_input.d, u_input.a.x, -(1i & arg_2.a), -(arg_3.b & 1i) << ((u_input.c >> (countOneBits(var_0.x) % 32u)) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1680f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1335f, arg_3.c.a)), 416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)), true)));
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.c.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1130f, _wgslsmith_f_op_f32(trunc(arg_3.c.a)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.a) - _wgslsmith_f_op_f32(-arg_3.c.a)))), -617f), arg_3, Struct_1(arg_3.c.a, arg_3.a, reverseBits(arg_3.c.c), true, countOneBits(countOneBits(vec2<u32>(var_0.x, 0u)) | arg_3.c.c.xy)), abs(u_input.a), arg_3.a);
    let var_4 = _wgslsmith_mult_vec3_u32(var_3.c.c, ~(~var_0));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_3.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.a, -763f)))))), ~vec2<u32>(u_input.c, 4018u), u_input.e, _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_2.a, max(2180i, var_3.b.b), -u_input.d, var_3.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b, ~arg_3.b, arg_3.b | arg_3.b, ~(-19774i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.b, arg_3.b, u_input.d, -8537i), vec4<i32>(-56205i, u_input.a.x, u_input.e, var_3.b.b)) & (vec4<i32>(var_3.d.x, arg_3.b, -24771i, u_input.a.x) & vec4<i32>(2147483647i, 0i, -16013i, 1i))), vec4<i32>(min(2147483647i, arg_3.b), 2147483647i, countOneBits(-21927i), abs(var_1.x))), 3326u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -598f;
    global1 = vec4<bool>(any(select(vec3<bool>(select(global1.x, false, global1.x), global1.x, global1.x), !vec3<bool>(true, global1.x, global1.x), global1.zxw)), global1.x, true, false);
    var var_1 = u_input.d;
    let var_2 = Struct_5(u_input.a.x, Struct_3(-_wgslsmith_div_i32(min(u_input.d, u_input.a.x), -2147483647i), select(!all(global1.yw), (u_input.e << (u_input.b % 32u)) == ~(-2147483647i), true)), Struct_2(global1.x && true, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -2147483647i)), u_input.d) ^ 41401i, Struct_1(_wgslsmith_f_op_f32(trunc(-1164f)), true, countOneBits(~vec3<u32>(4294967295u, 0u, u_input.b)), !(false != global1.x), select(reverseBits(vec2<u32>(46420u, u_input.c)), vec2<u32>(u_input.c, u_input.b), select(vec2<bool>(global1.x, true), vec2<bool>(true, false), global1.zz)))));
    let var_3 = var_2.a;
    let var_4 = ~var_2.c.c.c.xy & (var_2.c.c.e & select(var_2.c.c.c.zy, vec2<u32>(countOneBits(u_input.b), ~5443u), all(!global1.xxx)));
    global1 = !vec4<bool>(select(true, !select(true, global1.x, global1.x), global1.x & (true & global1.x)), global1.x, var_2.b.b, all(select(global1.yx, !global1.wx, var_2.c.c.d)));
    let var_5 = var_2.c.c.a;
    let x = u_input.a;
    s_output = func_1(73952u, select(true, false, all(vec3<bool>(true, var_2.c.c.d, true))), Struct_3(0i, var_2.c.a), Struct_2(_wgslsmith_f_op_f32(-169f - var_5) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.c.a))), abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.a.x, 23726i), -u_input.e)), var_2.c.c));
}

