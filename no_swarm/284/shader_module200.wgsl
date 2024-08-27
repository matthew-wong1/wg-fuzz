struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = select(u_input.d.zy, firstTrailingBit(u_input.d.zy), arg_1.b.b.xw);
    var var_1 = max(u_input.e.x, arg_1.a);
    let var_2 = _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(arg_1.d.d, _wgslsmith_add_i32(abs(2147483647i), abs(var_0.x ^ u_input.d.x))));
    let var_3 = ~_wgslsmith_mod_u32(arg_1.a, arg_1.b.c.x);
    var var_4 = Struct_4(arg_1.c, arg_1);
    return vec3<bool>(true, ~0i != _wgslsmith_add_i32(var_2, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.d, var_2, 0i), u_input.d)), true);
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f - -142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-184f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-433f)), _wgslsmith_f_op_f32(round(188f)))), -373f, _wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1188f, -764f, -609f))))))), u_input.a);
    let var_1 = vec4<u32>(1u, u_input.c.x, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), firstTrailingBit(u_input.c.x));
    let var_2 = select((select(var_1.yxy, ~var_1.wzy, func_3(-461f, Struct_3(4294967295u, Struct_2(vec3<u32>(13667u, u_input.e.x, var_1.x), vec4<bool>(true, false, false, true), u_input.e, var_1.x), Struct_2(var_1.yyz, vec4<bool>(false, false, true, true), vec3<u32>(var_1.x, var_1.x, 8632u), var_1.x), var_0), -38310i, true)) & ~_wgslsmith_add_vec3_u32(u_input.c.zww, u_input.e)) | _wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, var_1.x, 14727u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.yxy, vec3<u32>(var_1.x, var_1.x, var_1.x)), ~vec3<u32>(var_1.x, 0u, u_input.e.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 61871u, 38127u), u_input.c.yzy))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, (1u << (var_1.x % 32u)) | 0u, ~(~4294967295u)), ~(~var_1.xxw)), !any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), false)));
    let var_3 = _wgslsmith_dot_vec2_u32(var_2.zz ^ ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.e.x, var_2.x), var_2.yy), ~countOneBits(~var_1.xy));
    var var_4 = true != all(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))));
    return select(any(vec2<bool>(true, true)) && any(vec4<bool>(true, true, true, true)), !(!all(vec4<bool>(true, false, false, true))), all(!func_3(_wgslsmith_div_f32(var_0.b, 250f), Struct_3(0u, Struct_2(vec3<u32>(4294967295u, u_input.e.x, 61133u), vec4<bool>(true, false, true, true), vec3<u32>(var_2.x, var_2.x, 79021u), 22892u), Struct_2(u_input.c.wzz, vec4<bool>(false, false, false, false), vec3<u32>(var_2.x, 1u, 18548u), 1u), var_0), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = arg_1.c.b.zwx;
    var_0 = arg_1.c.b.zyy;
    var_0 = select(!arg_1.c.b.ywx, vec3<bool>(!func_2(), u_input.c.x >= select(~71445u, 47038u, arg_1.c.b.x & var_0.x), true || all(vec4<bool>(arg_1.c.b.x, true, var_0.x, arg_1.b.b.x))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1516f * arg_1.d.c.x)))), arg_1, abs(20667i), true));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.d.a.x);
    let var_2 = arg_1.d;
    return !vec2<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(var_1, var_1)))) <= -368f);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_2(vec3<u32>(100874u, ~arg_1.x, 0u ^ u_input.e.x), vec4<bool>(arg_3.x, !(_wgslsmith_add_i32(u_input.a, u_input.d.x) > _wgslsmith_add_i32(10094i, u_input.b)), func_2(), true), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(arg_1.x, arg_1.x)), ~u_input.c.x, ~arg_1.x), u_input.e.x, select(_wgslsmith_mult_u32(u_input.c.x, 58839u), 4294967295u | arg_1.x, !arg_0)), ~abs(arg_1.zwz)), arg_1.x);
    var var_1 = Struct_1(vec3<f32>(-1236f, 1023f, -501f), arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(201f)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)) - vec3<f32>(-231f, _wgslsmith_div_f32(795f, -1706f), _wgslsmith_f_op_f32(601f - -1905f)))), u_input.d.x);
    let var_2 = Struct_2(arg_1.wwz, var_0.b, vec3<u32>(~0u | _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, 47519u), 0u), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(var_0.a << (vec3<u32>(32171u, 13860u, 26147u) % vec3<u32>(32u)), firstLeadingBit(var_0.a))), ~(0u >> ((var_0.c.x >> (u_input.e.x % 32u)) % 32u))), min(u_input.c.x, arg_1.x << (~min(43431u, 1u) % 32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_div_f32(633f, _wgslsmith_f_op_f32(sign(var_1.a.x))), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(any(vec2<bool>(true, false)), false & !(u_input.c.x > 0u), false, false | all(vec2<bool>(false, false)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1354f, -410f)))) - -1131f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1458f - 1715f), -598f, -1034f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(false && var_0.x, ~u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1830f), vec2<f32>(424f, -1099f)), func_1(u_input.e.yy, Struct_3(u_input.e.x, Struct_2(u_input.c.yxy, vec4<bool>(true, true, true, var_0.x), vec3<u32>(1u, u_input.e.x, u_input.e.x), 22546u), Struct_2(vec3<u32>(u_input.e.x, u_input.c.x, u_input.c.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec3<u32>(u_input.e.x, u_input.e.x, 31747u), u_input.e.x), Struct_1(vec3<f32>(319f, -1200f, 201f), 386f, vec3<f32>(-347f, 843f, -222f), u_input.a)))))), var_0.x)), ~countOneBits(-(u_input.d.x << (u_input.e.x % 32u))));
    let var_2 = ~(~abs(select(u_input.c.x, 4294967295u, var_0.x))) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(29134u, 68299u, u_input.c.x), u_input.e) >> (select(u_input.c.xxw, _wgslsmith_div_vec3_u32(u_input.c.yzz, vec3<u32>(20081u, u_input.e.x, 0u)), !var_0.yxz) % vec3<u32>(32u)), u_input.e);
    var var_3 = u_input.e;
    let var_4 = false;
    var_3 = ~firstLeadingBit(vec3<u32>(abs(_wgslsmith_mult_u32(var_3.x, u_input.e.x)), 1u, _wgslsmith_add_u32(min(var_3.x, 59952u), u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -378f))), var_1.b), -44525i);
}

