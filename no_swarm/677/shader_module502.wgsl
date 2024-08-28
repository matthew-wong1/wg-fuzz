struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(vec4<i32>(-u_input.b, -abs(_wgslsmith_sub_i32(-2147483647i, u_input.b)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, u_input.b)) << ((4294967295u >> (min(u_input.a, u_input.c.x) % 32u)) % 32u), u_input.b));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(284f, global0.a.x, 1185f, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, -946f, -1271f))))))), !(!(!select(false, arg_1.x, arg_1.x))));
    var var_1 = arg_1.yy;
    global0 = Struct_1(global0.a, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), true);
    return Struct_1(var_2.a, all(vec4<bool>(global0.b, _wgslsmith_mod_u32(0u, u_input.c.x) > (76428u ^ arg_0), false, true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = global0.a.x;
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -u_input.b), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -2147483647i)), ~select(vec2<i32>(-4768i, 0i), vec2<i32>(u_input.b, -1i), true)), reverseBits(~(-vec2<i32>(-2147483647i, u_input.b)))) & (firstTrailingBit(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, -50307i), select(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.b, 1i), true))) ^ (_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.b, u_input.b))) << (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 13829u), arg_1), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))));
    var var_2 = arg_2;
    var var_3 = arg_2;
    var var_4 = arg_2.a;
    return -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b) >> (arg_1 % vec2<u32>(32u)), firstLeadingBit(select(vec2<i32>(-53559i, -10858i), var_1, true))));
}

fn func_1() -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(663f)), global0.a.x, _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-1f)))), select(!(!(u_input.b != -63565i)), true, any(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, true), vec2<bool>(false, global0.b)))));
    global0 = func_2(max(abs(~u_input.c.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, 1u, 55321u), ~u_input.c.x)) | ((min(u_input.a, u_input.c.x) ^ ~740u) ^ ~u_input.c.x), !vec3<bool>(true, true, global0.b));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, func_3(vec2<bool>(global0.b, global0.b), _wgslsmith_mod_vec2_u32(u_input.c.yz, u_input.c.yx), func_2(33456u, vec3<bool>(false, false, global0.b)), all(vec4<bool>(true, false, false, true))) & ~min(u_input.b, 2147483647i)), u_input.b);
    let var_1 = _wgslsmith_dot_vec2_u32(~(min(vec2<u32>(1u, 70643u), firstLeadingBit(u_input.c.yy)) ^ ~u_input.c.yy), vec2<u32>(max(u_input.c.x, 19791u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 5545u), ~vec2<u32>(6971u, u_input.a))));
    var_0 = u_input.b;
    return vec4<u32>(8423u, var_1, 42937u & reverseBits(u_input.c.x), var_1);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = ~46201u;
    var var_1 = func_2(u_input.c.x, select(select(!select(vec3<bool>(false, true, global0.b), vec3<bool>(true, global0.b, false), vec3<bool>(global0.b, false, true)), vec3<bool>(true, true, true), vec3<bool>(u_input.b != u_input.b, true, any(vec4<bool>(true, global0.b, false, global0.b)))), select(!(!vec3<bool>(true, false, global0.b)), !(!vec3<bool>(false, global0.b, global0.b)), false), _wgslsmith_f_op_f32(arg_2 * 522f) != global0.a.x));
    var_0 = countOneBits(min(52757u | arg_3.x, u_input.a)) & u_input.c.x;
    var var_2 = ~vec2<u32>(~(~firstTrailingBit(u_input.a)), 37191u);
    let var_3 = func_2(~_wgslsmith_mult_u32(arg_3.x, abs(_wgslsmith_add_u32(1u, 15105u))), !vec3<bool>(true, true, all(!vec2<bool>(true, global0.b))));
    return func_2(~arg_3.x, !vec3<bool>(true, (var_3.b || true) | (-23075i != u_input.b), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1265f) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global0.a.x), global0.a.xy)), global0.a, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f)))), (~vec4<u32>(0u, 55583u, 0u, u_input.a) ^ ~func_1()) | (select(~vec4<u32>(4935u, 64495u, 0u, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 15939u) >> (vec4<u32>(u_input.a, u_input.a, 45027u, 1u) % vec4<u32>(32u)), global0.b) ^ ~max(vec4<u32>(u_input.c.x, u_input.c.x, 45333u, 30537u), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 1u))));
    global0 = Struct_1(vec4<f32>(func_4(_wgslsmith_f_op_vec2_f32(global0.a.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1053f))), vec4<f32>(_wgslsmith_f_op_f32(1044f * global0.a.x), 1000f, _wgslsmith_f_op_f32(sign(-122f)), _wgslsmith_f_op_f32(abs(global0.a.x))), -194f, vec4<u32>(~4294967295u, ~0u, ~35770u, u_input.c.x)).a.x, 1982f, 571f, -610f), func_4(_wgslsmith_f_op_vec2_f32(select(global0.a.xy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1090f, global0.a.x)))), vec2<bool>(global0.b, global0.b))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), ~select(~vec4<u32>(4294967295u, 0u, u_input.c.x, 38711u), countOneBits(vec4<u32>(26369u, u_input.a, 4294967295u, 4294967295u)), func_4(vec2<f32>(global0.a.x, 855f), global0.a, -462f, vec4<u32>(26752u, u_input.a, u_input.a, 4294967295u)).b)).b);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(605f)), _wgslsmith_div_f32(676f, global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(387f - -632f), -271f))) * vec4<f32>(374f, -1407f, -1034f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)))), func_4(_wgslsmith_div_vec2_f32(func_2(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.zy), select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, global0.b, global0.b), global0.b)).a.wz, global0.a.zz), _wgslsmith_f_op_vec4_f32(trunc(func_2(reverseBits(44800u), vec3<bool>(global0.b, false, global0.b)).a)), global0.a.x, abs(~vec4<u32>(u_input.a, 1u, 4294967295u, u_input.c.x) << (vec4<u32>(u_input.a, 1136u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))).b);
    let var_1 = var_0;
    global0 = func_4(var_0.a.yy, var_1.a, -1000f, vec4<u32>(117486u, (~u_input.a & 1u) & (u_input.a >> (u_input.a % 32u)), u_input.c.x, max(u_input.a, _wgslsmith_dot_vec2_u32(~u_input.c.xx, vec2<u32>(u_input.a, u_input.c.x)))));
    var var_2 = vec3<i32>(u_input.b, 1i, min(u_input.b, 1i));
    global0 = Struct_1(var_1.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~1u);
}

