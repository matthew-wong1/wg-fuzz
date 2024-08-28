struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.a.x, 11569u, u_input.a.x, u_input.a.x))), ~(vec4<u32>(u_input.a.x, 8037u, 5464u, u_input.a.x) ^ vec4<u32>(36781u, u_input.a.x, u_input.a.x, u_input.b.x)));
    let var_1 = ~(~firstTrailingBit(var_0.yw ^ vec2<u32>(22317u, var_0.x))) ^ abs(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b, var_0.wzx)), ~vec2<u32>(var_0.x, var_0.x)));
    var var_2 = abs(var_0.zxx | var_0.ywz);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(760f)) * -1115f) * 1427f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -701f)))))));
    var_2 = u_input.b;
    return var_3.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(316f - 324f))), vec4<f32>(-1710f, 216f, _wgslsmith_f_op_f32(trunc(-723f)), 248f), true, Struct_1(~abs(u_input.c)), -(-vec2<i32>(u_input.c, u_input.c) >> (max(u_input.a, u_input.b.xx) % vec2<u32>(32u)))));
    var var_1 = firstLeadingBit(vec2<i32>(u_input.c & u_input.c, var_0.a.e.x) & var_0.a.e);
    var_1 = ~max(~(~vec2<i32>(var_0.a.d.a, var_1.x)), vec2<i32>(firstLeadingBit(~var_0.a.e.x), firstLeadingBit(79332i)));
    let var_2 = _wgslsmith_div_f32(1051f, _wgslsmith_f_op_f32(func_3()));
    var_1 = var_0.a.e;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(min(u_input.b.x, abs(0u)) & (~u_input.b.x << (~u_input.b.x % 32u)), 6476u), _wgslsmith_dot_vec2_u32(vec2<u32>(30612u, u_input.b.x), u_input.b.yx) >> ((_wgslsmith_mod_u32(38289u, u_input.a.x) | 12500u) % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~func_2(), 0u), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + 329f);
    let var_2 = !select(select(vec3<bool>(arg_0 < var_0.x, var_1 < -896f, arg_3), select(!vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(arg_3, arg_3, arg_3), true), select(!vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, true, arg_3))), !(!vec3<bool>(arg_3, arg_3, arg_3)), !(false && !arg_3));
    var_0 = ~(~(~(~u_input.b.xx)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(-1994f)), var_1);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(min(vec2<u32>(~(~0u), u_input.a.x), u_input.b.yz), vec2<u32>(~func_1(23942u, Struct_3(vec3<i32>(-39414i, u_input.c, -1i), vec2<f32>(1553f, 638f), -580f), u_input.c, false) | u_input.b.x, u_input.b.x));
    let var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(select(-vec4<i32>(2147483647i, -2147483647i, 1i, u_input.c), ~vec4<i32>(u_input.c, 0i, u_input.c, -2084i), true), ~vec4<i32>(u_input.c, u_input.c, u_input.c, -14055i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(211f, 726f, 251f, -235f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, 548f, -550f, -1000f))))))));
    var var_3 = vec4<i32>(var_1.a, var_1.a, firstLeadingBit(abs(select(33213i, 1i, true))), -var_1.a);
    let var_4 = select(vec2<bool>(380f == var_2.x, !any(vec4<bool>(true, true, true, true))), select(vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false))), vec2<bool>(!any(vec4<bool>(true, true, true, true)), true), !vec2<bool>(true, any(vec2<bool>(true, false)))), all(select(vec2<bool>(true, true), vec2<bool>(u_input.b.x <= u_input.a.x, true), any(vec4<bool>(false, false, false, false)) & false)));
    let var_5 = Struct_3(var_3.zww >> (vec3<u32>(reverseBits(func_1(var_0.x, Struct_3(var_3.wyy, vec2<f32>(-472f, 2173f), var_2.x), 1i, false)), _wgslsmith_mult_u32(~0u, var_0.x), 71661u) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(max(1277f, var_2.x))), -1543f), _wgslsmith_f_op_f32(ceil(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xxw, select(~_wgslsmith_clamp_vec2_u32(var_0, ~vec2<u32>(11029u, var_0.x), ~vec2<u32>(0u, u_input.a.x)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), u_input.b.xz)) ^ var_0, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1162f, -130f, 170f, var_2.x), vec4<f32>(-599f, -1373f, 2713f, 1967f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c, 884f, var_2.x, var_5.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(362f, 725f, var_5.b.x, -640f) + vec4<f32>(var_5.b.x, -385f, var_5.b.x, -1077f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1383f, var_5.c, -1000f))))))));
}

