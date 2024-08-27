struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<u32> {
    var var_0 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(4294967295u, 26261u)), u_input.b.yy, u_input.b.yy ^ abs(u_input.b.wz)) | (u_input.b.wz & max(_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 0u)), vec2<u32>(0u, u_input.b.x))));
    var var_1 = ~vec3<i32>(arg_0, arg_0, ~(~arg_0)) & ~vec3<i32>(arg_0, arg_0, ~arg_0);
    var_0 = ~u_input.b.xx;
    var_1 = _wgslsmith_mult_vec3_i32(~(~vec3<i32>(i32(-1i) * -40890i, u_input.d >> (var_0.x % 32u), countOneBits(u_input.c))), ~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.x, u_input.d), vec3<i32>(-29187i, u_input.a, -37195i))));
    var_0 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 63176u), u_input.b.ww)), vec2<u32>(~7063u, var_0.x));
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(arg_0.c, arg_0.c), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, -532f)), arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), u_input.c, ~vec4<u32>(firstTrailingBit(arg_0.d.x) << ((30361u & arg_0.d.x) % 32u), _wgslsmith_sub_u32(u_input.b.x ^ arg_0.d.x, 0u), 102253u, 0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_0.b.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-464f))), u_input.a != arg_0.c)));
    var_0 = Struct_1(arg_0.a, arg_2, abs(_wgslsmith_mult_i32(arg_0.a.x, var_0.c)), vec4<u32>(min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28830u, 57435u, 8394u, arg_0.d.x), u_input.b), _wgslsmith_add_vec4_u32(arg_0.d, arg_0.d)), ~min(arg_0.d.x, 4294967295u)), _wgslsmith_add_u32(select(~var_0.d.x, var_0.d.x, false), 0u), ~var_0.d.x, ~_wgslsmith_dot_vec2_u32(select(var_0.d.zx, vec2<u32>(arg_0.d.x, u_input.b.x), arg_1.yx), arg_0.d.xy)), 446f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e));
    let var_2 = arg_0;
    var var_3 = Struct_1(vec2<i32>(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-73064i >> (var_2.d.x % 32u), ~1i, _wgslsmith_div_i32(arg_0.c, var_2.c)), -vec3<i32>(-12780i, 45273i, 1i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, 1048f, var_0.e, arg_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, arg_2.x, 1735f, arg_2.x)), _wgslsmith_f_op_vec4_f32(-var_2.b), vec4<bool>(true, false, false, true)))))), ~arg_0.a.x, ~(~max(~vec4<u32>(82066u, 24073u, arg_0.d.x, 1u), ~vec4<u32>(1u, 24654u, 4294967295u, 0u))), arg_2.x);
    return arg_0.e;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -30392i), vec3<i32>(u_input.d, 46618i, -6755i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.zzz) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1485i), vec3<i32>(2147483647i, 20551i, u_input.a))), -firstLeadingBit(vec3<i32>(u_input.c, -21585i, u_input.c))) ^ vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -65785i, u_input.c)), abs(vec3<i32>(u_input.d, 2147483647i, u_input.d))), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(472f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1936f * 1132f))), _wgslsmith_f_op_f32(step(-2474f, _wgslsmith_div_f32(1240f, 2330f)))))));
    var var_2 = -14381i;
    var var_3 = Struct_1(~var_0.xy, vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 + var_1), var_1, 1000f), abs(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, u_input.a & var_0.x))), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), var_1);
    let var_4 = Struct_1(var_3.a, vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1000f + 1001f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(328f, -1148f) + _wgslsmith_div_f32(1000f, var_1)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) + -907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.zz, vec4<f32>(1315f, 591f, -109f, -1781f), -35173i, vec4<u32>(var_3.d.x, 75086u, 0u, 84253u), var_1), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -514f, 578f, 549f)))) - var_3.b.x)), -2147483647i, vec4<u32>(var_3.d.x, firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, var_3.d.x) << (_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 27183u)) % 32u)), ~reverseBits(~4294967295u), u_input.b.x), var_3.b.x);
    return var_4;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(~vec2<i32>(select(0i, 31i, false) & 34372i, -43305i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1562f, -243f, 174f, 1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1364f)), 203f, _wgslsmith_div_f32(-1280f, 925f), _wgslsmith_div_f32(-1302f, -189f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, -1505f, 1000f, -790f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, 113f, 138f, -859f))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~32166i, abs(_wgslsmith_sub_i32(-1i, u_input.d))), 0i), _wgslsmith_mult_vec4_u32(~func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, u_input.c), vec3<i32>(u_input.c, 0i, u_input.d)), any(vec2<bool>(true, true))), vec4<u32>(~func_1(-2147483647i, false).x, 59156u << (1u % 32u), ~u_input.b.x, ~(~43334u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-342f * -562f), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-1663f, 1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1593f, -1520f, true))), 1109f)));
    let var_2 = _wgslsmith_mod_vec2_i32(var_1.a, var_1.a);
    let var_3 = var_1.c;
    let var_4 = Struct_1(func_4(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(step(737f, _wgslsmith_f_op_f32(f32(-1f) * -804f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1286f)))), -256f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))), 0i, var_1.d, _wgslsmith_f_op_f32(trunc(var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e);
}

