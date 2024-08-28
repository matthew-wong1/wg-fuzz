struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    return !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_1(abs(min(_wgslsmith_mod_vec2_i32(-arg_1.a.yz, -arg_1.c.xx), max(arg_1.a.yy, ~vec2<i32>(-1i, -2147483647i)))), _wgslsmith_div_u32(abs(u_input.a << (_wgslsmith_mod_u32(arg_1.b, 60766u) % 32u)), ~firstLeadingBit(~u_input.a)), arg_3 && true, ~max(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.c.x, -7435i, -2147483647i, arg_1.a.x), ~vec4<i32>(0i, arg_1.c.x, arg_1.a.x, -2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, arg_1.c.x | arg_1.c.x, _wgslsmith_div_i32(-12622i, 2147483647i), arg_1.a.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, 752f)), 1000f, _wgslsmith_f_op_f32(1375f * 632f), arg_2)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.e * var_1.e)))));
    let var_3 = vec3<i32>(49942i, reverseBits(-2147483647i), arg_1.c.x) ^ min(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(arg_1.c), arg_1.a | arg_1.c), countOneBits(-arg_1.c.x), var_1.d.x), min(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.x, 16249i, var_1.a.x), vec3<i32>(4138i, var_1.d.x, arg_1.c.x)), vec3<i32>(_wgslsmith_sub_i32(22909i, -4026i), 2147483647i, ~var_1.d.x)));
    let var_4 = 42269u;
    return min(1u, ~9510u);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f + _wgslsmith_f_op_f32(ceil(963f))) * _wgslsmith_f_op_f32(534f - _wgslsmith_f_op_f32(f32(-1f) * -1317f))));
    let var_1 = func_3(!(!(!select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0))), Struct_2(~_wgslsmith_div_vec3_i32(~vec3<i32>(41477i, -20194i, 2147483647i), ~vec3<i32>(-8384i, 6312i, -47278i)), u_input.a, firstTrailingBit(~vec3<i32>(2147483647i, 15061i, -11145i)), arg_0), -122f, any(!func_2(~u_input.a)));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(vec2<bool>(arg_0, arg_0), Struct_2(vec3<i32>(1i, -1i, 0i), 117302u, vec3<i32>(567i, 0i, -30504i), false), _wgslsmith_f_op_f32(938f * 179f), !arg_0), var_1, ~select(1u, u_input.a, false), u_input.a), ~(~abs(vec4<u32>(var_1, 1u, u_input.b.x, u_input.b.x)))), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-568f - -760f), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(234f - 742f)), vec4<f32>(-638f, _wgslsmith_f_op_f32(trunc(-2510f)), _wgslsmith_f_op_f32(trunc(315f)), _wgslsmith_f_op_f32(step(-2192f, 1530f))), vec4<bool>(true, arg_0 && arg_0, arg_0, true))), Struct_2(-vec3<i32>(2147483647i, 1225i, -1i), _wgslsmith_sub_u32(0u, u_input.b.x) >> (abs(1u) % 32u), _wgslsmith_mult_vec3_i32(vec3<i32>(-29970i, 2147483647i, 11374i) >> (u_input.b % vec3<u32>(32u)), vec3<i32>(1i, -27093i, -1i)), arg_0), min(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(2147483647i, 38448i), vec2<i32>(-36962i, -15604i)), vec2<i32>(1i, 1i), ~vec2<i32>(-41424i, -4435i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-11745i, -1i), vec2<i32>(0i, 30096i)))), _wgslsmith_mod_vec3_i32(~select(select(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(-14076i, 22664i, -52425i), vec3<bool>(arg_0, false, arg_0)), vec3<i32>(-2147483647i, 1i, 1i) << (vec3<u32>(var_1, var_1, var_1) % vec3<u32>(32u)), func_2(u_input.a).xzx), _wgslsmith_add_vec3_i32(vec3<i32>(4008i, 1i, min(38088i, 1i)), vec3<i32>(~(-1i), ~39401i, reverseBits(3172i)))));
    var var_3 = Struct_2(var_2.b.b.a, 60980u, var_2.c, var_2.b.b.d);
    var var_4 = Struct_4(var_1, var_2.b, ~var_3.c);
    return firstLeadingBit(vec2<i32>(max(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_4.b.c.x, var_3.a.x), ~1i)), -(~(-84073i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47347i;
    var var_1 = !(!select(vec3<bool>(false, false, u_input.b.x <= 1u), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = 1i;
    let var_2 = Struct_1(func_1(true), 24383u, false, -(~vec4<i32>(abs(2147483647i), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(1i, 10213i), 1i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(661f, -280f, 1000f, 397f) - vec4<f32>(1162f, 322f, 566f, 157f)), vec4<f32>(-125f, -1000f, 231f, -526f), !vec4<bool>(false, false, var_1.x, var_1.x)))))));
    var_1 = vec3<bool>(any(!vec3<bool>(true, any(vec4<bool>(var_2.c, var_1.x, var_1.x, var_2.c)), all(vec4<bool>(var_1.x, true, true, var_2.c)))), any(!(!(!vec3<bool>(true, false, var_2.c)))), true);
    var_1 = vec3<bool>(true, all(vec3<bool>(all(!vec4<bool>(true, var_1.x, var_1.x, var_2.c)), true, all(!vec3<bool>(true, var_1.x, true)))), !(var_2.e.x < -583f) | var_1.x);
    var_0 = select(var_2.d.x, var_2.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.yyz, var_2.e.x);
}

