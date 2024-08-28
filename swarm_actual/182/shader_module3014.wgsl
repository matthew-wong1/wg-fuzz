struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = 701f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1335f - -179f), -1000f, false));
    var var_0 = ~(~44812u);
    var_0 = ~countOneBits(~arg_0);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -181f);
    let var_2 = false;
    return vec3<f32>(-2211f, 598f, var_1);
}

fn func_2(arg_0: f32) -> f32 {
    global1 = arg_0;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~1u)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-638f, arg_0, arg_0)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 903f)), vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1443f, -191f, arg_0))))));
    global0 = true;
    let var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1822f, 1624f, var_0.a.x) * var_0.a)))));
    return var_2.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: f32) -> vec4<i32> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1863f);
    var var_0 = vec2<i32>(arg_1, -1i);
    global0 = false;
    global1 = -117f;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 46306i), vec2<i32>(5569i, var_0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(var_0.x, 2147483647i), vec2<i32>(2147483647i, -16529i))), ~(~arg_2), ~var_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(~arg_1, ~arg_1, _wgslsmith_div_i32(var_0.x, 1i)), vec3<i32>(~(-2147483647i), var_0.x, firstTrailingBit(424i)))), 21284i, reverseBits(-41301i));
    return ~vec4<i32>(-_wgslsmith_mod_i32(1i, ~arg_1), i32(-1i) * -1i, _wgslsmith_add_i32(42883i, arg_2 >> (~u_input.c % 32u)), select(~_wgslsmith_div_i32(51294i, -45080i), countOneBits(~(-28042i)), true));
}

fn func_1() -> Struct_1 {
    global0 = false;
    var var_0 = true;
    let var_1 = -523f;
    var var_2 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, var_1, -593f)))), ~(~(-1i)) | _wgslsmith_dot_vec4_i32(-vec4<i32>(28318i, -1807i, -2147483647i, 1i), ~vec4<i32>(36243i, 1i, -38973i, 64341i)), select(2147483647i, -1i, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-489f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1)) - _wgslsmith_f_op_f32(var_1 + -719f)))) ^ (vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4783i, -1i), vec2<i32>(-18051i, -1i)), firstTrailingBit(-55273i), func_4(Struct_2(Struct_1(vec3<f32>(var_1, var_1, var_1))), -17511i, 3853i, var_1).x, _wgslsmith_add_i32(20337i, -2147483647i)));
    var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, ~(-2147483647i), func_4(Struct_2(Struct_1(vec3<f32>(951f, var_1, 884f))), ~var_2.x | (var_2.x << (u_input.b % 32u)), ~(-1i), var_1).x, var_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, ~(-2147483647i), 2147483647i, -2147483647i | ~var_2.x), vec4<i32>(2147483647i, -34775i, _wgslsmith_div_i32(var_2.x << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -13076i), var_2.wy)), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, var_2.x)), var_2.ww))), countOneBits(-vec4<i32>(var_2.x, var_2.x, _wgslsmith_div_i32(var_2.x, var_2.x), var_2.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1010f, -1094f), -266f, _wgslsmith_f_op_f32(var_1 * -2196f)) * vec3<f32>(_wgslsmith_f_op_f32(-628f - -593f), _wgslsmith_f_op_f32(abs(-706f)), var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, 0u)), countOneBits(vec3<u32>(u_input.a, u_input.b, u_input.b)), vec3<u32>(36590u, 0u, u_input.a) | vec3<u32>(41515u, 24782u, 4294967295u)) >> (firstTrailingBit(select(vec3<u32>(4294967295u, u_input.b, 20800u), vec3<u32>(4294967295u, 3764u, u_input.a), vec3<bool>(true, false, false)) & (vec3<u32>(u_input.b, u_input.c, u_input.c) >> (vec3<u32>(u_input.a, 4294967295u, 86115u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -745f)), 1119f)));
}

