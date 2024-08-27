struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: vec2<f32>) -> vec3<bool> {
    global0 = !(!any(vec4<bool>(false, any(vec4<bool>(false, true, true, arg_0.a.x)), !global1.a.x, arg_3.x != -395f)));
    var var_0 = -max(~vec2<i32>(arg_1.d.x, -arg_1.d.x), -abs(arg_1.d));
    var var_1 = Struct_2(arg_0);
    let var_2 = var_1.a;
    var_0 = arg_1.d;
    return vec3<bool>(false, arg_1.a, all(vec3<bool>(any(vec4<bool>(global1.a.x, false, true, var_2.a.x)), !arg_0.a.x, !arg_0.a.x)));
}

fn func_2(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = Struct_3(select(select(func_3(arg_0.b.a, Struct_4(true, arg_0.b, arg_0.c, arg_0.d), 1419f, _wgslsmith_div_vec2_f32(vec2<f32>(779f, -1263f), vec2<f32>(-933f, -2031f))), !vec3<bool>(false, arg_0.a, false), !vec3<bool>(arg_0.a, global1.a.x, arg_0.a)), !select(vec3<bool>(false, false, arg_0.b.a.a.x), !vec3<bool>(true, false, arg_0.a), true), false));
    let var_1 = arg_0.b.a;
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1329f), -1000f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(max(147f, 291f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, _wgslsmith_f_op_f32(step(-270f, -105f)), _wgslsmith_f_op_f32(step(-626f, 572f)), _wgslsmith_f_op_f32(1000f - -1876f)))));
    global1 = arg_0.b.a;
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = u_input.b;
    var var_1 = ~(~u_input.b) >> (~_wgslsmith_clamp_vec3_u32(max(func_2(Struct_4(true, Struct_2(Struct_1(arg_2.xz)), vec4<u32>(37111u, 2478u, 16176u, u_input.a), vec2<i32>(-1i, -61342i))), u_input.b), vec3<u32>(51976u, 0u, ~arg_0), max(vec3<u32>(var_0.x, arg_0, 1u), vec3<u32>(4294967295u, var_0.x, u_input.a))) % vec3<u32>(32u));
    var var_2 = arg_2;
    var var_3 = Struct_5(Struct_3(arg_1));
    var_3 = Struct_5(var_3.a);
    return vec3<bool>(true, true, any(select(var_3.a.a, !arg_2, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_3(!(!func_1(4294967295u, vec3<bool>(true, global1.a.x, true), vec3<bool>(false, global1.a.x, global1.a.x)))));
    global1 = Struct_1(vec2<bool>(var_0.a.a.x, ~(~4294967295u) <= select(4893u, u_input.b.x | u_input.b.x, func_1(u_input.b.x, vec3<bool>(global1.a.x, var_0.a.a.x, true), vec3<bool>(false, false, global1.a.x)).x)));
    let var_1 = var_0.a.a.zy;
    var var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(countOneBits(19757i), min(1i, 2147483647i >> (u_input.b.x % 32u)), -26803i | _wgslsmith_dot_vec3_i32(vec3<i32>(19310i, 0i, -14955i), vec3<i32>(1i, 15990i, 52827i))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), _wgslsmith_mod_i32(2147483647i, 39070i), -2147483647i), vec3<i32>(1i, 1i, 1i)), firstLeadingBit(vec3<i32>(~0i, ~2147483647i, ~(-1i)))));
    var_2 = vec3<i32>(0i, -1i, -1i);
    global0 = var_0.a.a.x;
    var var_3 = Struct_2(Struct_1(!(!vec2<bool>(var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1491f, -1405f))))), _wgslsmith_f_op_f32(-952f * 365f)), vec2<i32>(1i, -2147483647i), vec2<u32>(~reverseBits(1u), u_input.a));
}

