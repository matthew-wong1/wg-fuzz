struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, 0i, 43088u, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: u32) -> Struct_3 {
    global0 = Struct_3(false, -2147483647i, u_input.d & 1u, global0.d);
    global0 = Struct_3(all(!vec4<bool>(any(vec2<bool>(true, global0.a)), all(vec3<bool>(global0.a, true, global0.a)), true, global0.a)), global0.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.c) & vec2<u32>(4294967295u, 12249u), vec2<u32>(25164u, global0.c))), !((true | all(vec4<bool>(global0.a, global0.d, global0.a, true))) || all(select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, true, true), global0.d))));
    var var_0 = Struct_3(!global0.a, u_input.e.x, 1329u, false);
    return Struct_3(true, var_0.b, 4294967295u, !all(vec3<bool>(any(vec2<bool>(true, false)), var_0.d & true, true)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: f32) -> bool {
    global0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), -1585f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_3), vec2<f32>(arg_3, arg_3)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1138f, -919f)))))), -1000f, 19508u);
    let var_0 = Struct_1(-2147483647i, ~countOneBits(i32(-1i) * -2147483647i), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 974f, arg_3, 1203f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -576f, arg_3, 1135f) + vec4<f32>(-1649f, arg_3, -423f, arg_3))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, _wgslsmith_f_op_f32(arg_3 + arg_3), -1384f, _wgslsmith_f_op_f32(-arg_3)))), global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1000f, 511f, arg_3) * vec4<f32>(-2611f, -248f, 1049f, 1244f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, 674f, arg_3, -110f)))))));
    global0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1227f))), _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-358f, -2230f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(894f, 319f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1126f)), -1468f)))), 1u);
    let var_1 = ~vec3<u32>(85028u, _wgslsmith_mod_u32(u_input.d, 1u), global0.c);
    global0 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(-arg_3)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.yz + vec2<f32>(var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, arg_3))), !vec2<bool>(all(vec2<bool>(arg_1, true)), true))), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.xz), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, global0.c), var_1.xx) >> (countOneBits(vec2<u32>(1u, global0.c)) % vec2<u32>(32u)), ~vec2<u32>(1u, 4294967295u))));
    return true;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = func_2(arg_0.zy, arg_0.x, 45u);
    global0 = func_2(arg_0.xz, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1425f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + 161f), _wgslsmith_f_op_f32(floor(arg_0.x))))))), _wgslsmith_sub_u32(0u, ~(6843u >> ((63839u | u_input.d) % 32u))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.zz)))));
    let var_3 = vec4<bool>(any(!(!vec4<bool>(true, global0.d, var_1.a, global0.a))), false, func_3(-(-14488i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(73221u, global0.c, u_input.a, 15761u), vec4<u32>(u_input.d, var_0.c, 4294967295u, var_0.c)) % 32u)), false, u_input.d, _wgslsmith_f_op_f32(round(var_2.x))), false);
    return -2883f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global0 = Struct_3(global0.d, abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, global0.b, 2147483647i, u_input.b.x), select(vec4<i32>(-1i, 9697i, 1i, -2147483647i), vec4<i32>(arg_3.a, arg_3.b, u_input.b.x, -5341i), vec4<bool>(arg_3.c, false, true, arg_1.c)) ^ -vec4<i32>(-2147483647i, -24924i, -28695i, 7955i))), u_input.d, true);
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(abs(1433f))), _wgslsmith_f_op_f32(-arg_0), 0u);
    global0 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.e.zy * vec2<f32>(-824f, -782f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_3.d.yy))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, -1610f, 534f))))), min(global0.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(global0.c, u_input.a)) % 32u), ~firstLeadingBit(var_0.c))).a, var_0.b >> (~var_0.c % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, global0.c)), min(vec2<u32>(var_0.c, 81196u), vec2<u32>(global0.c, 0u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.c, global0.c, u_input.a), vec3<u32>(global0.c, u_input.d, var_0.c)), vec3<u32>(var_0.c, 9658u, global0.c) & vec3<u32>(0u, u_input.d, 4294967295u)), max(var_0.c, 4294967295u))), false);
    var var_1 = Struct_1(min(-(arg_1.a & global0.b), max(arg_3.b, _wgslsmith_dot_vec3_i32(u_input.b.yxz, vec3<i32>(arg_1.a, global0.b, arg_1.b)))) ^ u_input.c, 0i, false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-518f, arg_1.d.x, arg_1.e.x, 1880f))), arg_1.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.x, -1333f, -124f, -1000f) + vec4<f32>(arg_3.e.x, -1000f, 241f, arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, -1137f, arg_1.d.x, arg_3.d.x)))) - _wgslsmith_f_op_vec4_f32(arg_1.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_1.e.x, 506f, arg_0), vec4<f32>(arg_3.d.x, -383f, 1000f, -519f))))));
    var var_2 = Struct_3(true, max(min(31702i, -2147483647i), _wgslsmith_mult_i32(-1i, -1i)), ~36428u, !any(!(!vec3<bool>(true, var_1.c, true))));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.e.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.d.yx, vec2<f32>(arg_0, arg_3.e.x))), arg_3.e.zx))), _wgslsmith_f_op_f32(-1337f * _wgslsmith_f_op_f32(abs(arg_1.d.x))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(666f, Struct_1(firstLeadingBit(reverseBits(global0.b)), _wgslsmith_mult_i32(global0.b, ~select(37360i, global0.b, global0.d)), !global0.d | false, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, -271f, -1000f, -452f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(271f, 2284f, -542f, -403f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1895f, -393f, 796f, -905f), vec4<f32>(316f, 526f, 247f, 1154f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(213f, -523f, 1787f, 265f) - vec4<f32>(2756f, 265f, -2755f, -225f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-132f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1168f - -542f), _wgslsmith_f_op_f32(func_1(vec3<f32>(-1532f, 118f, -999f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f * -749f)), _wgslsmith_f_op_f32(f32(-1f) * -1582f))), global0.d, Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.yw, _wgslsmith_clamp_vec2_i32(reverseBits(u_input.b.zy), ~vec2<i32>(u_input.c, -29284i), vec2<i32>(1i, 1i))), global0.b, global0.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-602f, _wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(select(-820f, -279f, false)), -443f))), vec4<f32>(-822f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(238f, 1323f))), -1000f)));
    global0 = func_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -939f)), Struct_1(select(-global0.b, (i32(-1i) * -1i) >> (u_input.d % 32u), any(!vec3<bool>(global0.a, false, false))), 2147483647i, !global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-123f, -1162f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1086f)), _wgslsmith_f_op_f32(-570f - 1303f), global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -225f)), vec4<f32>(-1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f * -271f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1726f - -659f), _wgslsmith_f_op_f32(f32(-1f) * -1813f)), 211f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 881i, 1i, 1i), u_input.b) == ((-2147483647i & global0.b) ^ ~u_input.b.x), Struct_1(-19329i, ~global0.b | _wgslsmith_sub_i32(2147483647i, ~(-29599i)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1258f, 233f, -1000f, 131f))))), vec4<f32>(553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f + 604f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(377f, 637f, 1000f) + vec3<f32>(1105f, -442f, 957f)))), -791f)));
    global0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(2184f, 1161f), _wgslsmith_f_op_f32(492f * -1033f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-398f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-101f, 673f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f + -1000f)), 1273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f * 1000f))))), min(max(~(~u_input.d), 1u), 25542u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_clamp_i32(~global0.b, firstTrailingBit(-1i), abs(-1i)), func_4(-337f, Struct_1(-33918i, global0.b, global0.a, vec4<f32>(-1358f, -484f, 1662f, 480f), vec4<f32>(-1062f, 1027f, 1325f, 2209f)), true, Struct_1(u_input.c, u_input.c, global0.d, vec4<f32>(1255f, -396f, 167f, 315f), vec4<f32>(-1000f, -434f, -1301f, -173f))).b, _wgslsmith_mult_i32(abs(-12130i), _wgslsmith_mult_i32(global0.b, 0i)), ~global0.b), 0u, reverseBits(min(firstTrailingBit(vec4<u32>(67705u, 34216u, u_input.a, 43681u) & vec4<u32>(u_input.a, u_input.d, 4294967295u, 15593u)), ~vec4<u32>(global0.c, u_input.a, global0.c, 37984u))), ~_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c, u_input.d, 1u), vec3<u32>(0u, global0.c, u_input.a)), vec3<u32>(global0.c, 8334u, 0u), global0.d), countOneBits(vec3<u32>(1u, u_input.a, 20085u))), _wgslsmith_div_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(global0.b, global0.b, -9131i, u_input.e.x), abs(u_input.b)) & vec4<i32>(-2147483647i, reverseBits(12495i), -8629i, u_input.e.x & 1i)));
}

