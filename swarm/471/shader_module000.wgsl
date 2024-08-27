struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = Struct_1(select(vec3<bool>(false, true, !global0.c.x), vec3<bool>(!any(vec3<bool>(global0.a.x, global0.a.x, global0.c.x)), global0.a.x | all(vec4<bool>(global0.a.x, false, global0.a.x, false)), true), false), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, -118f, 522f))))), vec2<bool>(true, false), ~5432u, select(~global0.e, global0.e, global0.a.x));
    var var_0 = Struct_1(select(vec3<bool>(any(vec4<bool>(false, true, true, false)) && select(false, global0.a.x, true), all(global0.a), false), select(vec3<bool>(all(vec4<bool>(false, true, false, global0.c.x)), false, false && global0.a.x), global0.a, select(!vec3<bool>(global0.c.x, false, global0.a.x), vec3<bool>(global0.a.x, global0.c.x, true), select(global0.a, global0.a, global0.a))), 1u != u_input.b.x), global0.b, global0.a.xz, ~_wgslsmith_mult_u32(15457u, global0.d), vec3<i32>(2147483647i, u_input.a, global0.e.x));
    return true;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    global0 = Struct_1(vec3<bool>(func_3(), ((1u == u_input.d.x) == global0.c.x) | true, !global0.a.x), global0.b, vec2<bool>(global0.a.x, all(!global0.a.yy)), ~(~51549u), global0.e);
    return Struct_2(vec3<u32>(~57808u, 4294967295u, 0u));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = vec3<i32>(~(-1i), ~(-21405i), abs(_wgslsmith_add_i32(u_input.a, -2147483647i)));
    var var_1 = Struct_2(arg_0.yyw);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-623f, _wgslsmith_f_op_f32(select(254f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1191f * -764f), global0.b.x), any(vec4<bool>(false, false, global0.a.x, global0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-935f))))));
    let var_3 = func_2(_wgslsmith_div_f32(-835f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(-var_2.x)) + -986f)), -444f);
    let var_4 = _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, u_input.d.x), vec2<u32>(var_1.a.x, 17939u)), vec2<u32>(8604u, u_input.d.x)), abs(41898u & var_3.a.x)), ~min(arg_0.x, arg_0.x));
    return !(var_2.x != global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(select(vec3<bool>(global0.a.x, global0.a.x, func_1(vec4<u32>(u_input.b.x, 91234u, u_input.d.x, 56867u))), global0.a, any(vec4<bool>(true, global0.c.x, global0.c.x, false)) && func_3()), select(vec3<bool>(func_3(), true, -1410f > global0.b.x), global0.a, global0.c.x), -221f > global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b, global0.b)), vec2<bool>(true, true), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(835f, _wgslsmith_f_op_f32(-global0.b.x), select(global0.c.x, global0.c.x, global0.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), 1247f)).a.x, _wgslsmith_div_vec3_i32(vec3<i32>(36822i, -24474i << (global0.d % 32u), 0i), vec3<i32>(abs(-1i), -16856i, select(min(2147483647i, 1i), global0.e.x ^ 6401i, true))));
    global0 = Struct_1(!(!(!select(global0.a, vec3<bool>(global0.a.x, false, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(min(global0.b, vec3<f32>(global0.b.x, 2262f, global0.b.x))), global0.c, u_input.b.x, vec3<i32>(abs(19050i), ~_wgslsmith_mod_i32(global0.e.x, u_input.e) & -93165i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, -2147483647i, u_input.a, -1i) | vec4<i32>(2147483647i, 2147483647i, global0.e.x, -2147483647i)), -(vec4<i32>(u_input.e, global0.e.x, u_input.e, 30896i) | vec4<i32>(-52239i, 19151i, 2147483647i, u_input.c)))));
    var var_0 = Struct_1(global0.a, global0.b, select(select(select(!vec2<bool>(global0.a.x, false), select(global0.a.yy, vec2<bool>(global0.c.x, true), global0.c), vec2<bool>(false, false)), select(global0.a.xz, vec2<bool>(true, true), vec2<bool>(true, true)), func_1(~vec4<u32>(global0.d, global0.d, global0.d, global0.d))), vec2<bool>(false, false), !global0.c), 1u, firstTrailingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.e, -2147483647i)), vec3<i32>(u_input.e, u_input.a, global0.e.x) >> (vec3<u32>(global0.d, 60223u, 21554u) % vec3<u32>(32u))) | vec3<i32>(0i, ~global0.e.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(1228f, var_0.e.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2084f, global0.b.x, var_0.b.x))) + var_0.b))), ~(-firstTrailingBit(u_input.c | -2147483647i)));
}

