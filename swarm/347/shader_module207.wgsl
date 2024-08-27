struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(1655f, -106f)), -76178i, 4294967295u, -212f), false, true, vec2<i32>(i32(-2147483648), -16371i), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global1.a.a, ~_wgslsmith_sub_i32(u_input.d.x | ~u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.d.x), global1.d), global1.d.x ^ 53889i)), 4294967295u >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, ~72629u), ~global1.a.c) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.a.x - -1000f), _wgslsmith_f_op_f32(global1.a.d + -577f))))));
    var var_1 = true;
    return var_0.a;
}

fn func_3() -> vec2<bool> {
    var var_0 = false;
    global1 = Struct_3(Struct_2(global1.a.a, 44377i, max(4294967295u, u_input.b), global1.a.d), func_2().a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f - global1.a.a.a.x)), global1.e || global1.c, vec2<i32>((-u_input.d.x >> (u_input.a.x % 32u)) & (1i << (reverseBits(u_input.b) % 32u)), abs(u_input.d.x)), 1i > _wgslsmith_add_i32(~u_input.d.x, -22193i));
    var var_1 = abs(vec3<u32>(global1.a.c, min(~25199u, 44786u), reverseBits(_wgslsmith_mult_u32(u_input.a.x, ~1u))));
    let var_2 = _wgslsmith_f_op_f32(abs(global1.a.d));
    var_0 = any(select(vec2<bool>(_wgslsmith_f_op_f32(trunc(global1.a.a.a.x)) >= var_2, global1.b && all(vec2<bool>(global1.b, global1.e))), !vec2<bool>(global1.a.b > global1.d.x, true), var_2 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -667f))));
    return vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32589i), max(u_input.d.yw, global1.d)) <= u_input.d.x, !global1.b);
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_3(Struct_2(func_2(), -57610i, ~(~_wgslsmith_mult_u32(arg_0.x, 4294967295u)), 388f), global1.c, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(), global1.a.a.a.x <= 1655f), global1.e)), vec2<i32>(firstTrailingBit(firstTrailingBit(u_input.d.x)) | (reverseBits(-1i) << (_wgslsmith_mod_u32(arg_0.x, global1.a.c) % 32u)), -((global1.d.x | u_input.d.x) >> (~arg_0.x % 32u))), true);
    var var_1 = ~_wgslsmith_add_vec3_u32(max(_wgslsmith_div_vec3_u32(select(vec3<u32>(global1.a.c, 7087u, 65271u), vec3<u32>(1u, global1.a.c, 0u), vec3<bool>(global1.b, global1.b, false)), firstLeadingBit(vec3<u32>(u_input.c, arg_0.x, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.c, global1.a.c, 10317u) >> (vec3<u32>(12362u, 0u, arg_0.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.c, var_0.a.c, 129964u), vec3<u32>(0u, global1.a.c, u_input.b)))), min(vec3<u32>(var_0.a.c, ~global1.a.c, 0u), ~vec3<u32>(18607u, 47161u, arg_0.x)));
    let var_2 = var_0;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.a.a.a.x)), 816f, -648f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(reverseBits(vec2<u32>(4294967295u, global1.a.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-531f, global1.a.d, global1.a.a.a.x) + vec3<f32>(1128f, global1.a.d, global1.a.d)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.d, 669f, -200f), vec3<f32>(-390f, global1.a.d, -845f)))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.a.x, 764f, -128f, 881f), vec4<f32>(609f, 669f, 186f, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-372f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -770f), _wgslsmith_f_op_f32(-global1.a.a.a.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.a.a.x, var_0.x, var_0.x, var_0.x)))))));
    let var_2 = _wgslsmith_f_op_f32(-740f * 682f);
    let var_3 = !select(!(!vec2<bool>(false, global1.b)), select(vec2<bool>(global1.e, global1.e), vec2<bool>(true, true), true || all(vec4<bool>(true, true, true, global1.e))), all(select(vec4<bool>(global1.e, global1.c, true, false), vec4<bool>(false, true, false, false), !vec4<bool>(global1.c, true, true, global1.c))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -905f);
    var var_5 = var_1;
    global0 = func_2().a.x;
    var_5 = var_1;
    global1 = Struct_3(global1.a, global1.e, true, u_input.d.xx, true);
    let x = u_input.a;
    s_output = StorageBuffer(-595f);
}

