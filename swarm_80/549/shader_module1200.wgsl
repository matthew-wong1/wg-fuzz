struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> bool {
    var var_0 = Struct_1(vec4<i32>(reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, 1i), vec2<i32>(global1.c, global1.c))), 2147483647i, ~countOneBits(1i), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.c, global1.a.x, global1.c), vec3<i32>(-8813i, global1.c, global1.c), global1.a.wzx), vec3<i32>(-35224i, 1i, global1.c))), true, i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1694f, _wgslsmith_f_op_f32(trunc(global1.d.x)), _wgslsmith_f_op_f32(abs(arg_0.b.x)), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d.x), arg_0.b.x)) + global0.x) == -183f);
    var var_1 = Struct_3(abs(firstLeadingBit(~vec2<u32>(14082u, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.b, _wgslsmith_f_op_vec2_f32(-arg_2.b), select(vec2<bool>(var_0.b, global1.b), vec2<bool>(var_0.e, global1.e), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, -1394f)) - _wgslsmith_f_op_vec2_f32(sign(arg_0.b))))));
    global0 = vec2<f32>(1273f, _wgslsmith_f_op_f32(f32(-1f) * -1097f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.b.x, 1028f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) * arg_2.b.x));
    var_1 = arg_2;
    return !any(!vec3<bool>(global1.e, false, var_0.b));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_3(~u_input.a.yz, global1.d.wz);
    let var_1 = ~global1.c >> (~_wgslsmith_div_u32(14100u, var_0.a.x) % 32u);
    global1 = Struct_1(vec4<i32>(36744i, global1.a.x, ~global1.c, -1i), select(true, all(!vec2<bool>(global1.b, arg_0)), select(false, arg_0, true) == all(select(vec3<bool>(true, false, false), vec3<bool>(global1.e, false, true), false))), _wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(9122i & var_1), 5917i), select(0i, -global1.a.x, select(func_3(Struct_3(var_0.a, vec2<f32>(-853f, 389f)), global1.d.x, Struct_3(u_input.a.zz, vec2<f32>(374f, global1.d.x))), !arg_0, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(598f, 759f, var_0.b.x, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(-874f, global1.d.x, var_0.b.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, -1873f, 296f, -992f)))))), global1.e);
    var var_2 = 1u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b)), var_0.b, global1.d.x > global1.d.x)))));
    return ~u_input.a.x;
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_i32(global1.a.wyy, -min(vec3<i32>(global1.c, 2647i, global1.a.x) | vec3<i32>(-33413i, 1i, 1i), global1.a.zxw) << ((vec3<u32>(~1u, func_2(global1.b), ~24385u) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0.x), vec2<u32>(u_input.a.x, 0u)), _wgslsmith_clamp_u32(0u, u_input.a.x, 1u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2395f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f - global0.x)) + global1.d.x));
    let var_2 = global1.b;
    let var_3 = var_0 | vec3<i32>(-_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(global1.c, -2147483647i, -34972i, 2147483647i)) ^ var_0.x, (-34332i >> (_wgslsmith_dot_vec2_u32(u_input.a.xz, arg_0.zx) % 32u)) << (~arg_0.x % 32u), var_0.x);
    let var_4 = _wgslsmith_f_op_f32(global1.d.x * 2200f);
    return Struct_3(select(vec2<u32>(4294967295u, ~(~4294967295u)), vec2<u32>(~1u, u_input.a.x), !func_3(Struct_3(arg_0.yx, vec2<f32>(global0.x, 1167f)), 541f, Struct_3(vec2<u32>(37129u, 4294967295u), vec2<f32>(251f, 1097f)))), global1.d.wx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.d.yw;
    let var_0 = global1.c;
    var var_1 = global1.e;
    let var_2 = func_1(select(u_input.a, u_input.a, ~_wgslsmith_add_u32(0u, 0u) > ~(u_input.a.x | u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global1.a, vec4<i32>(67828i << (~(~1u) % 32u), 1i, 1i, -1i), vec3<u32>(4294967295u, u_input.a.x, ~_wgslsmith_mod_u32(4557u, var_2.a.x) & u_input.a.x));
}

