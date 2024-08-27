struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec2<f32> {
    var var_0 = ~67174u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -522f), 105f, arg_0.a) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 927f)))))) - vec4<f32>(arg_0.a, -148f, _wgslsmith_div_f32(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(262f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(arg_0.a, -549f)))) * _wgslsmith_f_op_vec2_f32(-var_1.yx)), reverseBits((3013i << (u_input.b % 32u)) << (0u % 32u)));
    global0 = false;
    let var_3 = Struct_1(var_1.x, max(arg_0.b, firstLeadingBit(arg_2.zyy)), all(!select(!vec4<bool>(arg_0.c, true, false, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true), !vec4<bool>(arg_0.c, true, arg_0.c, false))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 885f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, 1000f))) * var_1.zw)), _wgslsmith_f_op_vec2_f32(-var_2.a), vec2<bool>(!var_3.c, false))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global0 = any(!vec2<bool>(any(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0))), any(!vec3<bool>(arg_0, arg_0, true))));
    let var_0 = select(!(!(!(!vec3<bool>(false, arg_0, true)))), select(select(select(!vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, false)), arg_0), select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), false), true), vec3<bool>(any(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, true))), any(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), arg_0)), !(!arg_0)), arg_0), any(!(!vec3<bool>(true, arg_0, false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1756f) + 1000f) * -570f) + 1305f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-399f)) * _wgslsmith_f_op_f32(round(1000f)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1033f), vec2<f32>(1084f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, -1000f) - vec2<f32>(-1751f, -179f))))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-47542i, 0i, arg_1.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_1.x, -1i), arg_1, vec3<i32>(-46610i, 1i, 1i)))) & _wgslsmith_sub_i32(1i, ~1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.x, 393f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.a.x, arg_1, false), arg_1.x, vec4<i32>(21147i, -2147483647i, -2147483647i, arg_1.x))))) * var_1.a));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(1249f, arg_1, false), max(0i, -4129i), abs(vec4<i32>(-2147483647i, arg_1.x, 2147483647i, var_1.b)))).x)), firstTrailingBit(~(~(arg_1 & vec3<i32>(var_1.b, -38493i, 0i)))), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(197f, arg_0.b.a, arg_0.a.x, -1000f), vec4<f32>(arg_0.a.x, 622f, arg_0.a.x, 991f), arg_0.b.c)))))), arg_0.b);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, arg_0.b.a, arg_0.a.x) * _wgslsmith_f_op_vec4_f32(var_0.a - arg_0.a)))), var_0.a)), Struct_1(var_0.a.x, vec3<i32>(1i, -firstTrailingBit(var_0.b.b.x), -(-1i | arg_0.b.b.x)), var_0.b.c));
    let var_2 = vec4<f32>(func_2(true, abs(var_0.b.b), ~arg_1.x).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(931f * _wgslsmith_f_op_f32(-213f + arg_0.a.x)))), arg_0.a.x, 155f);
    let var_3 = var_1.a;
    var var_4 = -1415f;
    return Struct_3(var_2.zx, var_1.b.b.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    return func_4(Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, -332f, 640f, -1000f) - vec4<f32>(-768f, 827f, -1106f, 199f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-426f, -159f, -254f, 1150f)))))), func_2(false, -(vec3<i32>(arg_2, arg_2, 0i) & vec3<i32>(1i, 17521i, 1i)), arg_0)), vec2<u32>(arg_3.x, arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(33560u >> (u_input.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, 0i), 1i), -firstTrailingBit(-1i)), ~vec2<i32>(~(-24052i), 9640i)), 2147483647i, ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 36160u, 49722u), u_input.c, false), _wgslsmith_mod_vec3_u32(~u_input.c, ~vec3<u32>(u_input.b, u_input.a, u_input.a))));
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(657f - var_0.a.x), -2846f, _wgslsmith_f_op_f32(819f - var_0.a.x), var_0.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, -1574f, var_0.a.x, var_0.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(func_2(true, vec3<i32>(var_0.b, -61234i, 2398i), 1u), -2147483647i, ~vec4<i32>(0i, 1i, var_0.b, -34161i))).x, countOneBits(reverseBits(vec3<i32>(var_0.b, var_0.b, var_0.b))), true)), min(vec2<u32>(_wgslsmith_mod_u32(abs(u_input.b), 4294967295u), 35139u), ~max(select(u_input.c.yx, u_input.c.xy, vec2<bool>(true, false)), ~vec2<u32>(u_input.b, 122908u))));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 846f, -732f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1166f, 227f) - vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !var_2)), var_0.a.x)));
    let var_4 = var_0.a;
    var var_5 = Struct_3(var_0.a, _wgslsmith_add_i32(1i ^ ~var_1.b, ~21912i));
    let var_6 = !(abs(_wgslsmith_mod_i32(~2147483647i, min(var_0.b, var_1.b))) >= (-1i >> ((_wgslsmith_mod_u32(u_input.c.x, 18969u) >> (_wgslsmith_mod_u32(39871u, u_input.b) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 104f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, var_1.a.x, var_5.a.x, var_4.x) * vec4<f32>(506f, -1000f, -1161f, var_0.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.x) * _wgslsmith_div_f32(1030f, var_5.a.x)), _wgslsmith_f_op_f32(-var_3.x), var_4.x, -497f)), _wgslsmith_f_op_f32(var_5.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2355f, var_0.a.x)), _wgslsmith_div_f32(-2112f, var_4.x)))), u_input.a);
}

