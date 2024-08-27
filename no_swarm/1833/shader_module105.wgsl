struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global3 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, firstLeadingBit(vec4<u32>(1u, 61767u, 0u, 4294967295u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b), ~vec4<u32>(37496u, u_input.b.x, 23248u, u_input.b.x)), 13116u) | ~vec3<u32>(firstTrailingBit(1u), _wgslsmith_clamp_u32(global2.a.a.c, arg_1.c, arg_1.c), max(global2.b.x, 42315u)), vec3<u32>(u_input.b.x, arg_1.c, u_input.b.x >> (global2.a.a.c % 32u)));
    global0 = vec3<f32>(global0.x, global0.x, 1183f);
    let var_0 = select(!select(select(global2.c.a, arg_1.d, vec4<bool>(arg_1.a.x, global2.a.a.b, false, true)), select(!vec4<bool>(global2.a.a.b, global2.a.a.a.x, arg_1.a.x, arg_1.a.x), global2.c.a, !global2.a.a.d.x), any(select(vec2<bool>(false, global2.c.d.x), vec2<bool>(true, false), global2.a.a.a.zy))), global2.c.a, false);
    global2 = Struct_3(global2.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~reverseBits(global2.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(26478u, 1u, 0u), u_input.b.yzx)), _wgslsmith_mod_vec3_u32(~vec3<u32>(53892u, arg_1.c, 73036u), ~(vec3<u32>(0u, global2.a.a.c, 28369u) << (u_input.b.wyy % vec3<u32>(32u)))), u_input.b.wzy), arg_1);
    let var_1 = select(_wgslsmith_sub_vec4_i32(abs(~abs(vec4<i32>(u_input.a.x, 19274i, arg_0, 1i))), _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_2, -16902i, arg_2, arg_0), vec4<i32>(arg_2, 0i, arg_2, 39390i), !arg_1.d), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_2, arg_2, -34933i, 3452i), ~vec4<i32>(u_input.a.x, -2147483647i, arg_2, arg_2), min(vec4<i32>(2147483647i, 28598i, arg_2, 28593i), vec4<i32>(u_input.a.x, arg_0, u_input.a.x, 6493i))))), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 8914i), ~u_input.a.x, 2147483647i, max(arg_2, arg_0)), firstTrailingBit(reverseBits(vec4<i32>(-2147483647i, -11616i, -1i, 0i)))), _wgslsmith_mod_i32(~firstLeadingBit(u_input.a.x), reverseBits(arg_2)), ~_wgslsmith_mult_i32(-u_input.a.x, 1i)), global2.c.a);
    return 1i;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_3(arg_0, ~u_input.b.xzy, Struct_1(vec4<bool>(false, false, false, !(0u == arg_0.a.c)), 27074i < func_3(1i, Struct_1(vec4<bool>(true, global2.a.a.d.x, arg_0.a.a.x, false), true, 6265u, vec4<bool>(arg_0.a.a.x, arg_0.a.d.x, global2.c.d.x, true)), u_input.a.x ^ -2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(39109u, arg_0.a.c >> (62684u % 32u), 4294967295u, 8934u), (u_input.b & u_input.b) << (~vec4<u32>(global2.a.a.c, u_input.b.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), vec4<bool>(select(global2.a.a.a.x, arg_0.a.b, global2.a.a.b), arg_0.a.d.x, false, any(vec4<bool>(true, arg_0.a.d.x, global2.a.a.d.x, true)))));
    global3 = 1u;
    global2 = Struct_3(arg_0, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), ~var_0.b), Struct_1(vec4<bool>(any(select(vec2<bool>(true, true), global2.c.d.yz, arg_0.a.b)), true, !arg_0.a.b, var_0.a.a.d.x), select(false, all(select(vec2<bool>(true, arg_0.a.d.x), vec2<bool>(global2.a.a.b, true), true)), var_0.c.a.x), min(var_0.c.c, ~(~var_0.b.x)), var_0.a.a.d));
    var var_1 = arg_0;
    let var_2 = global0.xx;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1735f, _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1787f, 1773f, 799f) - vec3<f32>(-1000f, -466f, global0.x))))) + vec3<f32>(_wgslsmith_div_f32(var_2.x, 1000f), var_2.x, global0.x)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> vec3<u32> {
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(4294967295u, global2.b.x), max(min(u_input.b.x, 4294967295u), _wgslsmith_sub_u32(global2.c.c, global2.a.a.c)), global2.c.c), ~vec3<u32>(global2.c.c, 26978u, global2.c.c) ^ u_input.b.yww), vec3<u32>(~73823u, ~(~20376u | (u_input.b.x >> (u_input.b.x % 32u))), 0u));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_3(global2.a, func_4(286f, _wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec4<bool>(true, global2.c.b, false, true), true, u_input.b.x, global2.a.a.d))))), Struct_1(!select(!vec4<bool>(global2.c.d.x, true, global2.a.a.a.x, global2.c.a.x), vec4<bool>(false, true, true, global2.c.d.x), vec4<bool>(true, true, global2.c.d.x, false)), true, global2.b.x, vec4<bool>(!all(global2.c.d.xwy), false || any(vec3<bool>(global2.c.b, global2.c.d.x, global2.a.a.d.x)), true, true)));
    let var_1 = Struct_3(var_0.a, global2.b, Struct_1(!(!(!vec4<bool>(false, global2.c.d.x, true, var_0.a.a.b))), -1682f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - _wgslsmith_f_op_f32(-1000f - 1260f)), _wgslsmith_div_u32(u_input.b.x, global2.c.c), global2.a.a.a));
    var var_2 = min(u_input.a.x >> (~_wgslsmith_mult_u32(global2.a.a.c, 69771u) % 32u), ~((-1i | u_input.a.x) ^ ~u_input.a.x)) > u_input.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1338f - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(global2.a.a))).x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(global0.x * global0.x))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(706f - global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * 395f), 116f)))))));
    var_2 = all(var_1.a.a.a.wz);
    return select(var_0.c.d.xw, var_0.a.a.d.xx, var_1.a.a.d.yw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(564f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(sign(-138f)), _wgslsmith_f_op_f32(568f + global0.x), 1554f)))));
    let var_0 = select(func_1(), func_1(), func_1());
    global3 = _wgslsmith_div_u32(reverseBits(1u), min(select(abs(54522u), ~_wgslsmith_sub_u32(0u, global2.b.x), false), 49389u));
    let var_1 = reverseBits(~u_input.b.x);
    let var_2 = global2.a;
    global1 = false;
    global3 = 1u;
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-u_input.a.x, -u_input.a.x)), select(-(~vec2<i32>(1i, u_input.a.x)), u_input.a.yy, (var_2.a.a.x != var_0.x) && var_0.x)) << (global2.c.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3, select(_wgslsmith_div_i32(u_input.a.x, -2147483647i), 19013i, all(vec2<bool>(true, global2.a.a.b)))) ^ _wgslsmith_add_vec2_i32(max(u_input.a.yx, vec2<i32>(u_input.a.x, var_3)), firstTrailingBit(u_input.a.xz ^ vec2<i32>(-2308i, u_input.a.x))));
}

