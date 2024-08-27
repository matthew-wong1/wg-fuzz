struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(true, firstLeadingBit(~firstTrailingBit(vec4<u32>(var_0, 1u, 4294967295u, 1u)) & u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 771f)) * _wgslsmith_f_op_f32(534f + -165f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-165f))) + -2161f), _wgslsmith_f_op_f32(f32(-1f) * -162f)));
    return _wgslsmith_dot_vec2_i32(arg_1.zw, vec2<i32>(_wgslsmith_add_i32(1i, select(-1i, ~arg_1.x, any(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))), 1i));
}

fn func_2() -> i32 {
    global0 = true;
    let var_0 = -_wgslsmith_sub_i32(~15269i, _wgslsmith_mod_i32(-_wgslsmith_sub_i32(50639i, -1927i), ~abs(0i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, -1983f, 958f, _wgslsmith_f_op_f32(select(-1340f, -345f, true)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, -357f, -969f, 360f)), vec4<f32>(205f, -210f, 776f, -135f), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)))))));
    let var_2 = Struct_4(683f, vec2<i32>(-2147483647i, var_0), vec3<i32>(~var_0, func_3(~(~vec4<u32>(5450u, 74425u, 0u, 52549u)), abs(vec4<i32>(var_0, 1i, -27416i, var_0))), func_3(~u_input.b, _wgslsmith_mult_vec4_i32(max(vec4<i32>(41317i, -10695i, var_0, 0i), vec4<i32>(53478i, var_0, 0i, var_0)), ~vec4<i32>(var_0, var_0, -2147483647i, var_0)))), Struct_3(_wgslsmith_clamp_u32(~1u, 4294967295u, ~14851u) ^ 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(1u), 4294967295u, u_input.a.x, _wgslsmith_add_u32(1u, u_input.b.x)), ~u_input.a), vec4<u32>(~_wgslsmith_mod_u32(u_input.d, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.zw, _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(u_input.b.x, 14796u), vec2<u32>(4294967295u, 57095u))), countOneBits(max(u_input.a.x, u_input.d)), _wgslsmith_add_u32(_wgslsmith_div_u32(55523u, u_input.e), ~35502u))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1051f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-384f)))), 360f, var_2.a, var_2.a) - vec4<f32>(_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + var_2.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_2.a)), _wgslsmith_f_op_f32(725f + _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(max(var_1.x, -1160f))));
    return min(var_2.c.x, -var_0);
}

fn func_1() -> bool {
    let var_0 = Struct_3(u_input.c.x);
    var var_1 = Struct_1((func_2() != 2147483647i) || !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), reverseBits(~(~vec4<u32>(1u, var_0.a, u_input.c.x, var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)), !all(vec3<bool>(false, false, false)))), 469f, -432f));
    var var_2 = u_input.b;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, -1161f) * _wgslsmith_f_op_f32(sign(var_1.c.x))) + -577f)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i), ~abs(~vec2<i32>(-2147483647i, -1i)), vec2<i32>(func_2(), countOneBits(160i)) & _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(6640i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 2147483647i)))), (_wgslsmith_sub_vec3_i32(-vec3<i32>(-8199i, 2147483647i, 64061i), ~vec3<i32>(-14534i, 1i, -37734i)) >> (var_2.xxw % vec3<u32>(32u))) << ((_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_1.b.zzx, u_input.b.zzx), ~u_input.a.wxw) & min(var_2.wyx << (var_2.xyz % vec3<u32>(32u)), vec3<u32>(8098u, 1u, 2477u))) % vec3<u32>(32u)), var_0, ~_wgslsmith_sub_u32(~1u, var_1.b.x));
    var_2 = var_1.b;
    return -574f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1639f - var_3.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -414f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = false & any(vec4<bool>(true && all(vec2<bool>(true, true)), true, func_1(), true));
    var var_0 = _wgslsmith_clamp_i32(0i, -25723i, (i32(-1i) * -(i32(-1i) * -835i)) & (max(_wgslsmith_dot_vec2_i32(vec2<i32>(-42252i, 7929i), vec2<i32>(-1i, -12741i)), i32(-1i) * -1i) | -countOneBits(1i)));
    var_0 = _wgslsmith_div_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11695i, 25182i, -44117i), vec3<i32>(2147483647i, 44511i, -1i)) | abs(1i), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -42012i, 1i, 0i), vec4<i32>(-15767i, 2147483647i, -38767i, -6196i)))), ~(-2147483647i));
    var var_1 = Struct_3(118551u);
    var var_2 = ~select(u_input.d, firstLeadingBit(firstTrailingBit(u_input.a.x) ^ _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 25370u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(u_input.b) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_u32(~u_input.a.ww, select(vec2<u32>(var_1.a, var_1.a), u_input.b.wx, vec2<bool>(true, true))) | abs(~23099u), abs(~firstLeadingBit(0u & u_input.a.x)));
}

