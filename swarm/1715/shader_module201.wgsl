struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = Struct_1(true);
    var_1 = Struct_1(arg_1.x);
    var var_2 = Struct_1(true);
    var_1 = Struct_1(select(!(!(!arg_0)), var_1.a, any(select(arg_1.xz, arg_1.zx, arg_0))));
    return Struct_2(var_1.a, u_input.d);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = 425f;
    var var_1 = reverseBits(min(~vec4<u32>(u_input.a.x, 1u, func_2(true, vec3<bool>(arg_1.a, arg_1.a, arg_1.a)).b, 1u), vec4<u32>(_wgslsmith_add_u32(~arg_1.b, ~135315u), 113051u, arg_1.b, ~(~u_input.a.x))));
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)) + -1000f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1225f)), -689f)) * _wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(sign(211f)))), vec3<bool>(!arg_1.a, !arg_1.a, all(vec4<bool>(true, arg_1.a, true, true))));
    global0 = array<vec2<u32>, 25>();
    var var_3 = vec4<bool>(var_2.a, false, var_2.a, !arg_1.a);
    return _wgslsmith_f_op_f32(floor(1643f));
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.e.xz;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.e.zwz, func_2(67870u != select(u_input.d, 1u, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, true))))));
    var_0 = vec2<i32>(var_0.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(countOneBits(u_input.e), firstLeadingBit(u_input.e)), -27369i));
    let var_2 = Struct_3(firstLeadingBit(min(vec3<i32>(40917i, select(var_0.x, -2147483647i, false), 2147483647i), reverseBits(u_input.e.wwx))));
    var_0 = -u_input.e.zx;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(ceil(-484f)), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(331f + -579f)) - vec4<f32>(-900f, _wgslsmith_f_op_f32(-827f - var_1), _wgslsmith_f_op_f32(var_1 - -1394f), 1354f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(200f, 1365f, var_1, -1000f) * vec4<f32>(195f, -425f, 1000f, var_1))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -664f, -1523f))))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = arg_1.x;
    var var_2 = !select(vec3<bool>(false, true, !arg_2.a), select(vec3<bool>(true, true, true), vec3<bool>(arg_2.a, false, true), !(arg_2.a || arg_2.a)), !(!vec3<bool>(arg_2.a, arg_2.a, false)));
    var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -804f)) + arg_1.x));
    var var_3 = select(select(!vec4<bool>(arg_2.a, any(vec4<bool>(false, var_2.x, false, var_2.x)), any(vec3<bool>(arg_2.a, arg_2.a, var_2.x)), var_2.x), select(vec4<bool>(false, arg_2.a || false, true, all(var_2.xy)), vec4<bool>(arg_0.a.x >= -49163i, select(var_2.x, false, true), u_input.d <= u_input.d, arg_2.b <= 1u), select(select(vec4<bool>(true, false, arg_2.a, arg_2.a), vec4<bool>(var_2.x, true, false, true), vec4<bool>(arg_2.a, var_2.x, arg_2.a, arg_2.a)), vec4<bool>(false, arg_2.a, false, var_2.x), vec4<bool>(false, var_2.x, true, true))), var_2.x), vec4<bool>(true, arg_2.a, var_2.x, select(!(!var_2.x), any(select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x))), all(select(vec2<bool>(true, true), vec2<bool>(var_2.x, arg_2.a), vec2<bool>(arg_2.a, arg_2.a))))), vec4<bool>(var_2.x | arg_2.a, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x) <= 530f, !arg_2.a & false));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1()).x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 982f))))))));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -497f));
    let var_1 = Struct_1(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true))));
    global0 = array<vec2<u32>, 25>();
    let var_2 = vec3<f32>(arg_0, 2229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_3 = u_input.e;
    return Struct_1(true != (var_3.x < arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), _wgslsmith_f_op_vec4_f32(func_1()), func_2(true, vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_i32(u_input.e.zz, vec2<i32>(u_input.c, 0i))))))), -select(firstTrailingBit(min(u_input.e.wzz, vec3<i32>(-10404i, -226i, u_input.b))), vec3<i32>(u_input.b | u_input.b, firstTrailingBit(u_input.e.x), _wgslsmith_div_i32(-1i, u_input.c)), vec3<bool>(false, true, func_2(true, vec3<bool>(true, true, true)).a)), _wgslsmith_add_vec3_i32(-vec3<i32>(28862i >> (u_input.a.x % 32u), 2147483647i, ~2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -u_input.b, u_input.b), vec3<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-23805i, u_input.e.x), vec2<i32>(2147483647i, u_input.b)), 0i))));
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-786f + _wgslsmith_f_op_f32(floor(-1018f))))), ~u_input.e.ywx & (-_wgslsmith_mod_vec3_i32(u_input.e.xzx, u_input.e.zwy) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1665i, -1i), vec3<i32>(29925i, u_input.c, 2147483647i)))), -countOneBits(firstLeadingBit(u_input.e.xyz)) ^ (u_input.e.zyy << (min(vec3<u32>(982u, 112676u, 11682u), u_input.a) % vec3<u32>(32u))));
    var var_1 = vec3<bool>(all(!select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), true)), all(select(!vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, true, true), u_input.a.x < u_input.a.x)) & (u_input.e.x < u_input.b), var_0.a);
    global0 = array<vec2<u32>, 25>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1663f)))))))), _wgslsmith_f_op_f32(sign(-1000f)));
    var var_3 = ~u_input.e.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(64469u), ~_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(-2984i, u_input.b, abs(-4703i)), -(u_input.c << (u_input.a.x % 32u))), var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 1944f)) + vec3<f32>(-597f, 2264f, var_2.x))))));
}

