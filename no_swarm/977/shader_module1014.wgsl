struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -162f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = -954f;
    let var_0 = 2682u;
    let var_1 = countOneBits(countOneBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.d, -24792i), ~vec2<i32>(u_input.d, -2147483647i))) | vec2<i32>(i32(-1i) * -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(u_input.d, -25517i, -49564i))));
    let var_2 = ~u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(639f, -1329f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1626f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(735f - 605f) - _wgslsmith_f_op_f32(abs(-412f)))), _wgslsmith_f_op_f32(max(220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(111f)))))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    global0 = _wgslsmith_div_f32(104f, -503f);
    global0 = arg_1;
    let var_0 = select(vec3<i32>(u_input.d, u_input.d, abs(firstTrailingBit(min(arg_3.x, 46641i)))), _wgslsmith_add_vec3_i32(~(select(vec3<i32>(u_input.d, arg_3.x, -2147483647i), vec3<i32>(arg_3.x, -2147483647i, 66533i), vec3<bool>(true, false, true)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 15145u, u_input.e), vec3<u32>(u_input.b, u_input.e, u_input.a)) % vec3<u32>(32u))), firstLeadingBit(-(vec3<i32>(arg_3.x, arg_3.x, arg_3.x) | vec3<i32>(6142i, u_input.d, u_input.d)))), vec3<bool>(arg_2, select(arg_0, arg_0, arg_2), true));
    return arg_1;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> StorageBuffer {
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = u_input.d;
    var var_1 = vec2<i32>(-firstLeadingBit(u_input.d), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 77557i, -15058i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))), _wgslsmith_mod_i32(min(1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(650i, u_input.d)))), 2147483647i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_1 - 568f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_div_f32(arg_1, arg_1)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-922f))), arg_1))), _wgslsmith_f_op_f32(1058f * _wgslsmith_f_op_f32(func_3(all(arg_0), -1194f, !select(true, false, false), firstTrailingBit(max(vec2<i32>(u_input.d, u_input.d), vec2<i32>(var_1.x, -52062i)))))), arg_1);
    return StorageBuffer(min(~_wgslsmith_sub_u32(~49416u, _wgslsmith_div_u32(1u, 70615u)), min(0u, 2086u ^ u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -440f;
    let var_1 = Struct_4(true & select(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false, true));
    var var_2 = vec3<i32>(firstTrailingBit(max(u_input.d, u_input.d)), -8612i, 29572i ^ u_input.d) & (vec3<i32>(u_input.d, u_input.d, 2147483647i) << (max(~vec3<u32>(64927u, 38128u, u_input.e), ~(~vec3<u32>(u_input.b, u_input.b, u_input.a))) % vec3<u32>(32u)));
    let var_3 = 1u ^ (select(0u | min(1u, u_input.e), u_input.b, var_1.a) << (46736u % 32u));
    let var_4 = _wgslsmith_f_op_f32(round(-570f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f - 711f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-288f, -961f)) * -255f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-495f, 594f))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1016f, -143f, var_4)), _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_f32(min(-843f, -616f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(887f - -1860f), 550f))))));
    let x = u_input.a;
    s_output = func_2(select(!(!vec3<bool>(var_4, var_4, true)), vec3<bool>(false, true, any(vec2<bool>(false, var_4))), var_5.x > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-var_5.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(var_1)))));
}

