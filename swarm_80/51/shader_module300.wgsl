struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1070f, -266f)) * -1534f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-2012f * -384f)))), ~(~13789u & arg_0.c.b.x) >= firstTrailingBit(1u), any(arg_0.c.c) || true);
    return _wgslsmith_f_op_f32(arg_1.a + -356f);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_2, 15099i), ~arg_2), firstTrailingBit(vec2<i32>(u_input.b.x, arg_2))) >> (select(vec2<u32>(0u, 0u) | vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, u_input.c), arg_1.xx) % vec2<u32>(32u)), select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 1437u, u_input.c)) << (vec3<u32>(1u, u_input.c, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, u_input.c)), select(vec3<u32>(u_input.c, u_input.c & u_input.c, countOneBits(0u)), reverseBits(select(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(1u, 0u, u_input.c), arg_1.yyx)), vec3<bool>(229f < arg_0.b.x, arg_2 == 48726i, !arg_1.x)), !any(arg_1.xx)), select(arg_1, !select(vec4<bool>(arg_1.x, true, arg_0.c, false), vec4<bool>(arg_0.c, arg_0.d, true, false), arg_1), arg_1));
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(var_0.b, var_0.b), vec3<u32>(69836u, u_input.c, 4294967295u)), var_0.b) << (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, 26872u)), var_0.b) % vec3<u32>(32u)), !select(!vec4<bool>(arg_1.x, var_0.c.x, true, arg_0.d), !arg_1, any(vec3<bool>(arg_1.x, false, var_0.c.x)) && false));
    var_0 = Struct_1(var_0.a, max(vec3<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(~var_0.b.zz, abs(vec2<u32>(0u, 94480u))), (var_0.b.x << (1u % 32u)) & 1u), var_0.b), !select(vec4<bool>(true, !arg_0.d, all(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), select(false, false, arg_1.x)), arg_1, false));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(521f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) - _wgslsmith_f_op_f32(arg_0.b.x - -1062f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-534f * 668f))) - arg_0.a), _wgslsmith_f_op_f32(step(-658f, -329f)));
    let var_2 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(979f, 1938f, -547f), _wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, var_1.x, -507f), arg_0.b))) + vec3<f32>(163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1840f + 1049f)), 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.b, vec3<f32>(var_1.x, -1325f, arg_0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec3_f32(func_3(arg_1, vec4<bool>(false, false, var_0, false), -12564i)).zz, _wgslsmith_f_op_vec2_f32(arg_1.b.xy - arg_1.b.xy), vec2<bool>(true, true))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(arg_1.a, arg_0, arg_1.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.b.yz * vec2<f32>(arg_1.a, arg_1.b.x)))))) + arg_1.b.xz);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(arg_1.a * -358f)))));
    let var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(-215f, var_2.x, true))))), select(!(!vec2<bool>(var_0, arg_1.c)), select(vec2<bool>(true, all(vec4<bool>(true, var_0, arg_1.d, var_0))), vec2<bool>(false, true), all(vec4<bool>(true, false, true, var_0))), !(17975u >= u_input.c) & !all(vec4<bool>(false, true, arg_1.c, arg_1.c))), Struct_1(vec2<i32>(-abs(u_input.b.x), -u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c) ^ vec3<u32>(71096u, u_input.c, u_input.c), abs(vec3<u32>(u_input.c, u_input.c, 0u))) | (~vec3<u32>(23229u, u_input.c, u_input.c) | ~vec3<u32>(u_input.c, u_input.c, 27366u)), vec4<bool>(true, any(vec3<bool>(arg_1.d, arg_1.c, false)), !var_0, true)));
    var var_4 = var_3.c;
    return var_4.c.yxz;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(arg_0.b.yx, ~arg_0.b.yy));
    var var_1 = !arg_0.c.ywz;
    let var_2 = !select(vec4<bool>(!var_1.x & true, _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(abs(233f)), arg_0.c.x, var_1.x), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), var_1.x);
    var_1 = !(!(!vec3<bool>(var_2.x, true, var_2.x & true)));
    let var_3 = ~(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-14122i, -13346i), -vec2<i32>(8800i, arg_0.a.x)), -arg_0.a.x, reverseBits(arg_0.a.x) ^ abs(arg_0.a.x)) >> (~vec4<u32>(~u_input.c, u_input.c, 1u >> (var_0 % 32u), countOneBits(u_input.c)) % vec4<u32>(32u)));
    return any(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_4(vec2<f32>(739f, -1161f), arg_0.c.ww, arg_0), Struct_2(arg_1, vec3<f32>(arg_1, -729f, arg_1), false, false)))))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_1, vec3<f32>(arg_1, -1036f, arg_1), arg_0.c.x, false), var_2, u_input.a.x))), var_1.x, select(any(arg_0.c), all(var_2.xw), all(var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, any(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), !any(vec4<bool>(3475u < u_input.c, func_1(Struct_1(vec2<i32>(36963i, -3443i), vec3<u32>(33232u, 0u, u_input.c), vec4<bool>(true, false, false, false)), -2997f), true, u_input.c >= 4294967295u)));
    let var_1 = vec2<i32>(-1i) * -u_input.b.yy;
    var_0 = select(select(!select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, true)), !(!(!vec3<bool>(true, false, var_0.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.c), select(4294967295u, 1u, true)) != _wgslsmith_add_u32(~u_input.c, 0u)), !(!(!func_4(-348f, Struct_2(-667f, vec3<f32>(1017f, -274f, 695f), var_0.x, true)))), !select(vec3<bool>(select(var_0.x, true, var_0.x), true, true), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, false, false), vec3<bool>(true, false, var_0.x)), func_4(1000f, Struct_2(454f, vec3<f32>(-1348f, 1075f, -1388f), false, var_0.x))), !select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, var_0.x), var_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1363f - -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(func_2(Struct_4(vec2<f32>(1335f, 134f), vec2<bool>(var_0.x, false), Struct_1(vec2<i32>(26756i, var_1.x), vec3<u32>(u_input.c, u_input.c, 63778u), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(488f, 421f, -409f), vec3<f32>(1500f, 1000f, -1000f))), !var_0.x, var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-488f))))), any(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0.x)), var_0.x);
    var var_3 = Struct_3(687f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(56671u, u_input.c), vec2<bool>(false, false))), vec2<u32>(~u_input.c, ~u_input.c)), vec2<u32>(u_input.c, u_input.c << (1u % 32u))), var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, -274f, _wgslsmith_f_op_f32(var_3.a * -275f), _wgslsmith_f_op_f32(sign(-741f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(426f, -274f, -364f, -1938f), vec4<f32>(var_3.a, var_2.b.x, -1197f, var_3.a)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -1000f, -337f, var_3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, var_2.a, var_2.a, var_3.a)))))));
}

