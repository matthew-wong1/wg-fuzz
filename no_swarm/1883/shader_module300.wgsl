struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_mult_i32(abs(~u_input.a << (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u)) | ~(-43622i), 1i);
    return arg_0.a.x | arg_0.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_1(vec3<u32>(abs(~1u), 0u, (select(u_input.b.x, 61246u, true) | countOneBits(u_input.b.x)) & _wgslsmith_mod_u32(abs(arg_1.x), 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, 730f)))))));
    let var_2 = arg_0;
    var var_3 = Struct_1(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b.x, arg_1.x) ^ vec3<u32>(u_input.b.x, arg_1.x, 53506u)), max(var_0.a, u_input.b) ^ select(var_0.a, var_0.a, vec3<bool>(true, false, false)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, 0u, 17353u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(23588u, 1u, 0u), vec3<u32>(u_input.b.x, 39583u, var_0.a.x), u_input.b))));
    var var_4 = all(vec3<bool>(false, true, true));
    return abs(~abs(select(u_input.b.x, abs(1u), false)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = 4294967295u;
    global0 = 0u;
    global0 = func_2(arg_1);
    var var_0 = ~(arg_1.a.x >> (~(func_3(vec2<i32>(u_input.a, u_input.a), vec3<u32>(28824u, u_input.b.x, 28715u)) << (func_3(vec2<i32>(-38596i, 2147483647i), vec3<u32>(arg_0.a.x, 4294967295u, 4294967295u)) % 32u)) % 32u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(arg_1.a & countOneBits(vec3<u32>(0u, 40404u, 5888u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 19563u, 1u), u_input.b >> (u_input.b % vec3<u32>(32u))), vec3<u32>(~48162u, ~13927u, 6202u)) & ~(~reverseBits(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))));
    return var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = -_wgslsmith_sub_vec4_i32(-(vec4<i32>(arg_0.x, 51786i, arg_0.x, -38140i) << (~vec4<u32>(arg_1.a.x, 15956u, 2046u, arg_1.a.x) % vec4<u32>(32u))), -(~(vec4<i32>(-29269i, u_input.a, arg_0.x, arg_0.x) << (vec4<u32>(arg_2, 109542u, arg_2, arg_1.a.x) % vec4<u32>(32u)))));
    var var_1 = arg_1;
    global0 = arg_1.a.x ^ u_input.b.x;
    let var_2 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(69239u, 1u, 13894u, 0u)), vec4<u32>(0u, 0u, u_input.b.x, 1u))), abs(((vec4<u32>(45708u, 16707u, 22755u, arg_2) << (vec4<u32>(4294967295u, arg_2, var_1.a.x, 1u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(48416u, 26501u, 70848u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 1u, var_1.a.x)) % vec4<u32>(32u))) & ~abs(vec4<u32>(0u, 7277u, u_input.b.x, arg_1.a.x))));
    var var_3 = vec3<bool>(!any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true)) == true);
    return ~(u_input.b & u_input.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> StorageBuffer {
    global0 = 29249u;
    let var_0 = true;
    global0 = arg_0.x;
    var var_1 = vec3<i32>(0i, u_input.a ^ -max(~u_input.a, -u_input.a), u_input.a << (~func_3(-vec2<i32>(1i, 1591i), firstTrailingBit(arg_0)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1261f * -656f))))));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(min(u_input.a, var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_1.xy), 45637i, -1i), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, -1534i, u_input.a, 26819i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, 14589i))), firstLeadingBit(vec4<i32>(reverseBits(-1i), -33660i, _wgslsmith_add_i32(var_1.x, var_1.x), u_input.a))), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_0.x, 4294967295u, 2021u, 42032u)), vec4<u32>(4332u, ~u_input.b.x, 1u, 20635u | u_input.b.x)), ~var_1.x & -1i, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_5(vec3<u32>(_wgslsmith_dot_vec3_u32(func_4(-vec2<i32>(u_input.a, u_input.a), func_1(Struct_1(vec3<u32>(u_input.b.x, 20756u, u_input.b.x)), Struct_1(u_input.b), vec4<bool>(var_0, true, true, var_0), vec3<bool>(var_0, false, true)), 35568u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-873f, -468f, 610f, 563f), vec4<f32>(402f, -1536f, -642f, 805f), vec4<bool>(true, true, var_0, false)))), u_input.b), reverseBits(_wgslsmith_div_u32(~u_input.b.x, firstTrailingBit(u_input.b.x))), 1u), select(!select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), true), select(vec2<bool>(var_0, true), vec2<bool>(false, false), var_0), vec2<bool>(true, true)), vec2<bool>(!(!var_0), all(vec3<bool>(var_0, true, false))), var_0), !vec4<bool>(!var_0, any(vec3<bool>(var_0, var_0, var_0)) & true, !var_0, true));
}

