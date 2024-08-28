struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = countOneBits(u_input.d.x);
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(1u, 37454u))), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(60320u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(553u, 4294967295u)), vec2<u32>(1u, 13363u), vec2<bool>(true, true)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 42216u))), vec2<u32>(25465u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(25288u, 10235u, 30280u, 49046u), vec4<u32>(8991u, 91236u, 1u, 72683u))) & abs(397u)));
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_mod_u32(countOneBits(4741u), ~15936u), 1u) | _wgslsmith_div_u32(1u << (firstLeadingBit(1u) % 32u), ~min(_wgslsmith_clamp_u32(44994u, 4294967295u, 4294967295u), ~29455u));
    var var_3 = vec3<bool>(any(vec2<bool>(true, true)), !(!all(vec4<bool>(false, true, true, true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true)));
    let var_4 = Struct_2(vec2<u32>(~52653u, 9602u), 14688u, 25137i);
    return var_4.c;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = !vec3<bool>(true, true, any(vec4<bool>(u_input.a < u_input.d.x, true, true, true)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.d.x, -17797i, u_input.a, 40797i)), firstLeadingBit(vec4<i32>(-4510i, u_input.a, 49160i, 0i))), vec4<i32>(-1i) * -(vec4<i32>(13567i, -4326i, u_input.d.x, u_input.d.x) >> (vec4<u32>(arg_0, 25226u, 7258u, arg_0) % vec4<u32>(32u)))), max(func_3(vec3<f32>(1f, 1f, 1f)), _wgslsmith_div_i32(-u_input.d.x << (~0u % 32u), ~(u_input.c ^ -1i))), select(min(u_input.c, 2147483647i), countOneBits(_wgslsmith_sub_i32(~(-37840i), -31224i)), var_0.x));
    let var_2 = -1279f;
    var_0 = vec3<bool>(any(!select(vec4<bool>(var_0.x, var_0.x, true, true), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x)), var_0.x, any(vec3<bool>(all(vec4<bool>(false, var_0.x, true, false)) == (true || var_0.x), var_0.x, var_0.x & false)));
    var var_3 = u_input.b;
    return _wgslsmith_add_u32(arg_0, 1u);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = arg_0;
    global0 = arg_0;
    let var_2 = false;
    let var_3 = ~(arg_1 & 22084u);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1618f), _wgslsmith_f_op_f32(round(-540f)), true)), 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)))), Struct_3(abs(-2147483647i), min(~(~vec4<u32>(arg_1, 30144u, var_0, var_3)), vec4<u32>(var_0, var_3 >> (1u % 32u), arg_1, 118375u))), 23822u, select(vec2<u32>(select(0u, arg_1, true), abs(29725u)) >> (vec2<u32>(var_3, ~26096u) % vec2<u32>(32u)), ~(~(vec2<u32>(arg_1, arg_1) | vec2<u32>(arg_1, 4294967295u))), !arg_2.x), Struct_1(!arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f * -1532f)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global0 = false;
    let var_0 = func_4((~_wgslsmith_mod_u32(14744u, arg_2.x) == (~89017u ^ (958u << (arg_2.x % 32u)))) == true, abs(func_2(~abs(arg_2.x))), select(vec2<bool>(false, any(vec4<bool>(true, true, false, true)) | any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(true, any(vec2<bool>(true, false)))), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false))));
    var var_1 = Struct_3(u_input.d.x, ~select(arg_2, vec4<u32>(29970u, 42447u, var_0.c, abs(4294967295u)), all(vec2<bool>(false, true))));
    var_1 = func_4(false, 30876u, !(!(!select(vec2<bool>(var_0.e.a, true), vec2<bool>(false, false), vec2<bool>(var_0.e.a, var_0.e.a))))).b;
    let var_2 = vec4<bool>(var_0.e.a, !(!(var_1.b.x < 26786u)) & true, true, false | var_0.e.a);
    return _wgslsmith_sub_u32(arg_1.a.x, ~var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -firstTrailingBit(u_input.c);
    var var_1 = _wgslsmith_add_u32(countOneBits(~85253u), 4942u);
    var var_2 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(max(var_0, u_input.c) << (func_1(vec3<i32>(2147483647i, -2538i, 6633i), Struct_2(vec2<u32>(0u, 3012u), 1u, u_input.b), vec4<u32>(135401u, 5916u, 27946u, 0u)) % 32u), -1357i), u_input.b, firstTrailingBit(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(var_0, 27029i))), u_input.c), u_input.b, func_4(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), false)), _wgslsmith_mult_u32(0u, 1u), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true), false), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))).e);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f - -157f) * var_2.c.b));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, var_3) - _wgslsmith_f_op_f32(-var_2.c.b))), _wgslsmith_f_op_f32(-var_3)));
    let var_5 = var_0;
    let var_6 = vec4<bool>((_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(849f, var_3), _wgslsmith_div_f32(var_2.c.b, -1749f))) <= 1079f) || var_2.c.a, !(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(49696u, 1u), 50230u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(39646u, 4294967295u))) > 1u), false, all(vec3<bool>(true, false, (var_2.c.a & false) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(89597u, 0u)), ~vec2<u32>(15789u, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(75200u, 1u, 54630u), vec3<u32>(4294967295u, 4294967295u, 0u)), abs(vec3<u32>(0u, 28400u, 6388u))), select(min(vec3<u32>(4294967295u, 17483u, 55915u), vec3<u32>(1u, 0u, 0u)), vec3<u32>(1u, 1u, 1u), true)), ~(~0u)));
}

