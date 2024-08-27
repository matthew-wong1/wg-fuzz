struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = -859f;

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> vec3<u32> {
    global2 = firstTrailingBit(global0.a.a.xx);
    let var_0 = Struct_3(firstTrailingBit(vec3<u32>(global0.c, ~(~71078u), _wgslsmith_sub_u32(global2.x, countOneBits(4294967295u)))), global0.a.c);
    global1 = -1681f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -462f)))))) - 657f);
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.c.x - var_0.b.x)));
    return vec3<u32>(~_wgslsmith_sub_u32(arg_2 >> (var_0.a.x % 32u), _wgslsmith_mod_u32(~global2.x, 0u)), ~_wgslsmith_div_u32(64364u, ~_wgslsmith_mod_u32(global0.c, var_0.a.x)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(countOneBits(0u), ~arg_2, 0u), arg_2));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_2(global0.a, global0.b, (122307u << (_wgslsmith_clamp_u32(18867u, abs(1u), global2.x) % 32u)) | abs(firstTrailingBit(_wgslsmith_div_u32(arg_0, 4294967295u))), _wgslsmith_f_op_f32(select(global0.b.c.x, _wgslsmith_f_op_f32(round(-766f)), global0.d)) >= -193f, global0.d);
    global0 = Struct_2(global0.a, Struct_1(vec3<u32>(~global2.x, _wgslsmith_mult_u32(arg_0, 107885u), _wgslsmith_dot_vec3_u32(func_3(u_input.a.x, -2147483647i, var_0.b.a.x), global0.b.a >> (var_0.a.a % vec3<u32>(32u)))), -631f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b, var_0.a.c.x, global0.a.b), vec3<f32>(var_0.b.b, 840f, var_0.b.b)), _wgslsmith_f_op_vec3_f32(max(var_0.b.c, global0.b.c)))), vec3<f32>(var_0.b.b, var_0.a.c.x, global0.b.c.x), vec3<bool>(true, any(vec4<bool>(var_0.e, true, true, false)), all(vec3<bool>(true, false, false)))))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.b.a, global0.b.a), 69982u), !all(select(select(vec4<bool>(true, global0.e, false, var_0.d), vec4<bool>(global0.d, true, global0.d, var_0.e), true), select(vec4<bool>(global0.d, var_0.d, global0.e, var_0.d), vec4<bool>(false, false, false, false), vec4<bool>(false, true, global0.e, false)), vec4<bool>(true, var_0.e, false, var_0.d))), var_0.e);
    global0 = Struct_2(var_0.b, Struct_1(vec3<u32>(arg_0 | var_0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.a.a.x, 1u)), global0.c), _wgslsmith_f_op_f32(-var_0.a.c.x), vec3<f32>(-2188f, global0.b.c.x, global0.a.b)), _wgslsmith_mod_u32(1u, 30178u), var_0.e, var_0.d);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.a.x, arg_0, arg_0), countOneBits(vec3<u32>(global0.b.a.x, global0.b.a.x, global2.x))), 106f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1630f, var_0.a.b, global0.b.b))), global0.a, 0u, select(!any(!vec4<bool>(false, var_0.e, false, true)), true & !(var_0.e || false), select(any(vec2<bool>(false, global0.e)), global0.e, var_0.e | any(vec3<bool>(global0.e, false, global0.d)))), var_0.e);
    var var_2 = Struct_2(global0.b, var_1.b, _wgslsmith_mult_u32(max(countOneBits(global2.x), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(2030u, 0u, 4294967295u, var_1.b.a.x), vec4<u32>(var_1.b.a.x, global2.x, var_0.a.a.x, 4294967295u)) ^ 14289u), !global0.d, false);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1876f + 146f)), -1391f, true));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_mod_u32(global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~(~64120u)), ~(~global0.b.a.yy)));
    var var_1 = vec2<bool>(all(vec2<bool>(true, all(!vec3<bool>(true, global0.d, false)))), global0.d);
    let var_2 = var_0;
    global1 = 1228f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-707f, global0.b.c.x)))), global0.a.c.x, _wgslsmith_f_op_f32(func_2(max(var_2, 74007u))))));
    return vec3<bool>(global0.e, any(!select(!vec3<bool>(global0.d, true, global0.d), !vec3<bool>(global0.d, global0.e, var_1.x), global0.a.b >= -348f)), all(vec3<bool>(var_1.x, !all(vec2<bool>(var_1.x, true)), all(vec3<bool>(true, var_1.x, global0.e)))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1617f)) * _wgslsmith_f_op_f32(max(-824f, global0.a.c.x)))) + 430f) + global0.a.c.x);
    let var_2 = reverseBits(u_input.a);
    global2 = arg_3.a.xz;
    let var_3 = Struct_3((((global0.a.a >> (arg_3.a % vec3<u32>(32u))) | max(vec3<u32>(arg_3.a.x, 39036u, global0.a.a.x), arg_3.a)) << (~arg_3.a % vec3<u32>(32u))) & vec3<u32>(~50095u, ~4294967295u, 16289u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.b, global0.b.b, 733f))), arg_3.c)));
    return ~2558u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1014f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b + -1185f)))), -672f));
    var var_1 = vec4<u32>(abs(~34253u ^ func_4(false, func_1(), 2005f, global0.a)), ~_wgslsmith_dot_vec3_u32(global0.b.a, select(~vec3<u32>(global0.c, global2.x, global2.x), min(global0.a.a, global0.a.a), !vec3<bool>(false, true, global0.d))), ~0u, ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global0.b.a.x), vec3<u32>(global2.x, global0.c, global0.a.a.x)), global2.x | global0.c) | 41070u));
    var_0 = 1688f;
    var var_2 = global0.b;
    let var_3 = global0.b;
    var var_4 = Struct_2(Struct_1(var_3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -143f), global0.b.c.x)), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(floor(var_3.b))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(func_2(global0.c)))))), Struct_1(var_3.a, var_3.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, -1136f, var_2.c.x))) - var_2.c)), var_1.x & var_3.a.x, global0.d | !(!global0.e), global0.d);
    var_1 = vec4<u32>(_wgslsmith_div_u32(var_4.c, 1u), 82749u, _wgslsmith_dot_vec3_u32(func_3(~u_input.b, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, u_input.a.x)), var_2.a.x << (var_3.a.x % 32u)) >> (_wgslsmith_mult_vec3_u32(global0.a.a, vec3<u32>(1u, 49155u, var_1.x)) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, global0.a.a.x, var_3.a.x), vec4<u32>(0u, 1u, var_1.x, 4294967295u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 6863u, 0u), vec4<u32>(10509u, global0.c, var_3.a.x, global2.x)), ~var_2.a.x), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.c, 0u, 4294967295u), vec3<u32>(var_2.a.x, var_1.x, 1u))))), _wgslsmith_mod_u32(min(0u, _wgslsmith_clamp_u32(var_3.a.x, var_2.a.x, global2.x)) | _wgslsmith_add_u32(~4294967295u, select(1u, global0.c, false)), ~reverseBits(1u)));
    let var_5 = vec3<bool>(true & !var_4.e, var_4.e, !var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b) ^ _wgslsmith_mult_i32(u_input.a.x, u_input.b));
}

