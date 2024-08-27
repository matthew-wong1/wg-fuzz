struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = u_input.a.zxx;
    let var_1 = 109627u;
    return Struct_1(arg_0.x < (-34630i << ((36521u | u_input.d) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1635f, -1053f))))), vec3<bool>(true, !any(vec3<bool>(true, false, false)), any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_2.b.x) - _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(floor(341f)))))), !select(select(arg_0.c, vec3<bool>(arg_0.c.x, arg_0.a, true), true), select(vec3<bool>(true, true, arg_2.a), select(vec3<bool>(false, arg_0.c.x, true), vec3<bool>(false, arg_0.c.x, arg_0.a), true), arg_0.c), arg_2.c));
    var_0 = any(select(!vec3<bool>(true, all(vec2<bool>(var_1.c.x, arg_0.c.x)), true), arg_0.c, !(~77697u <= (u_input.d >> (26380u % 32u)))));
    var var_2 = arg_2;
    var var_3 = !vec4<bool>(any(vec3<bool>(any(vec3<bool>(true, arg_2.c.x, arg_0.c.x)), all(var_1.c.zz), false)), true, var_1.a, any(!vec4<bool>(false, true, false, arg_0.a)));
    return ~u_input.d;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = !arg_1.c;
    var var_1 = !vec2<bool>(any(arg_1.c.zx), true);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(66634u) << (14049u % 32u), func_3(func_2(_wgslsmith_clamp_vec2_i32(u_input.c.wy, vec2<i32>(u_input.e.x, u_input.c.x), u_input.b)), _wgslsmith_f_op_f32(606f + _wgslsmith_div_f32(-439f, arg_1.b.x)), Struct_1(true, vec2<f32>(arg_1.b.x, arg_0.b.x), vec3<bool>(false, var_1.x, var_0.x)))), ~(0u << (_wgslsmith_sub_u32(~29135u, _wgslsmith_sub_u32(arg_3, arg_2)) % 32u)));
    var_1 = var_0.xz;
    var var_3 = Struct_1(true, arg_0.b, vec3<bool>(any(arg_1.c) || true, var_0.x, any(select(vec4<bool>(arg_0.c.x, arg_0.a, var_0.x, var_1.x), select(vec4<bool>(false, arg_1.c.x, arg_0.c.x, var_1.x), vec4<bool>(var_1.x, arg_0.c.x, true, true), true), vec4<bool>(true, true, true, true)))));
    return Struct_1(func_2(u_input.c.zy).a, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(round(arg_1.b.x))))), -766f), !select(vec3<bool>(any(arg_0.c), any(vec3<bool>(false, true, arg_0.a)), arg_0.c.x), vec3<bool>(any(vec4<bool>(false, true, var_3.c.x, false)), true, !var_0.x), !arg_1.c));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = vec4<u32>(~_wgslsmith_mod_u32(abs(u_input.d) >> (_wgslsmith_add_u32(u_input.d, 0u) % 32u), u_input.d), u_input.d ^ ~2678u, ~81462u, u_input.d);
    let var_1 = 1163i;
    let var_2 = arg_1;
    let var_3 = var_0.x;
    var var_4 = -488f;
    return !select(!vec3<bool>(arg_0.x, arg_0.x, arg_1.a), select(select(arg_0, arg_1.c, !arg_1.c.x), !(!vec3<bool>(true, var_2.a, false)), vec3<bool>(false, arg_1.a, true)), func_2(u_input.e.ww | vec2<i32>(u_input.e.x, 1i)).a || func_2(abs(u_input.a.yw)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(select(~(-u_input.a.xyz), vec3<i32>(-abs(-1i), u_input.a.x, _wgslsmith_mod_i32(-28331i, -u_input.c.x)), select(func_4(vec3<bool>(true, false, true), func_1(Struct_1(false, vec2<f32>(-661f, -610f), vec3<bool>(true, true, true)), Struct_1(true, vec2<f32>(-990f, 831f), vec3<bool>(false, true, false)), u_input.d, u_input.d), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1955f, 932f, 279f) * vec3<f32>(1056f, -1651f, 944f))), select(func_1(Struct_1(true, vec2<f32>(291f, 1000f), vec3<bool>(false, true, false)), Struct_1(true, vec2<f32>(-704f, 567f), vec3<bool>(true, false, true)), 0u, 53960u).c, vec3<bool>(true, true, true), true), vec3<bool>(func_2(u_input.b).a, func_2(u_input.b).c.x, all(vec2<bool>(true, false))))), _wgslsmith_div_vec3_i32(u_input.a.zxz, vec3<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(8138i, u_input.a.x)), countOneBits(u_input.c.wx)), _wgslsmith_dot_vec3_i32(u_input.e.wxz, reverseBits(u_input.c.ywx)))));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1299f, 1f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(133f, -562f) - vec2<f32>(443f, 469f))))), func_2(-var_0.xy).b)), vec3<bool>((1u == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.d, 13295u))) && true, true, false));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1453f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, var_1.c.x)), var_1.b.x))) <= _wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x - 1464f), _wgslsmith_f_op_f32(-var_1.b.x))))), var_1.c);
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.x, -1382f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), -1000f)), func_2(var_0.yy).c);
    var_1 = func_1(func_2(vec2<i32>(i32(-1i) * -var_0.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.x, 1i, 1i), u_input.b.x, _wgslsmith_mod_i32(1i, u_input.c.x)))), Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(var_3.b.x + -667f), var_2.b.x), var_1.c), ~40412u, ~13911u);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(409f, _wgslsmith_f_op_f32(select(-1049f, var_3.b.x, true)), _wgslsmith_f_op_f32(1409f + -315f), -948f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, 1000f, _wgslsmith_f_op_f32(-var_2.b.x), var_3.b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, 937f, 698f, -210f) + vec4<f32>(var_3.b.x, -1168f, var_3.b.x, var_2.b.x)))), u_input.d >= 4294967295u)), func_1(Struct_1(var_3.c.x, var_3.b, vec3<bool>(var_2.c.x, var_3.c.x, var_2.a)), func_2(vec2<i32>(u_input.c.x, -8455i)), 39368u, _wgslsmith_mod_u32(4294967295u, u_input.d)).a || func_4(func_2(vec2<i32>(u_input.a.x, u_input.c.x)).c, Struct_1(var_3.c.x, vec2<f32>(var_1.b.x, var_3.b.x), var_1.c), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, var_3.b.x, 179f))).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(545f, var_1.b.x, var_2.b.x, 1000f))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(858f, var_1.b.x, var_2.b.x, var_3.b.x)))))));
    var_2 = Struct_1(true, var_4.wx, !func_2(var_0.yy).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, u_input.a.x, -1i, -36284i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, var_0.x, var_0.x, -1i), ~vec4<i32>(-57308i, var_0.x, -12526i, -1i), u_input.c)) ^ u_input.a);
}

