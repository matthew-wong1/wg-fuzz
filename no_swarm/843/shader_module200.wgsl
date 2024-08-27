struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec3<bool> {
    global0 = true | (true || (false && !any(vec4<bool>(true, false, false, true))));
    global0 = 4294967295u < _wgslsmith_dot_vec2_u32(min(u_input.b.yy, vec2<u32>(u_input.d.x, 0u)) | ~vec2<u32>(2891u, arg_1), vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(58797u, 0u, 50147u), vec3<u32>(0u, 16369u, u_input.d.x)), ~u_input.d.zzy), reverseBits(reverseBits(53687u))));
    global0 = select(!(min(_wgslsmith_dot_vec3_u32(u_input.b.yzy, vec3<u32>(u_input.d.x, u_input.b.x, u_input.e.x)), ~arg_1) >= ((u_input.a ^ 1u) ^ arg_1)), true, (arg_1 >> (arg_1 % 32u)) != u_input.e.x);
    return !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !(any(vec3<bool>(false, true, true)) & true));
}

fn func_2() -> Struct_2 {
    let var_0 = all(!func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, -660f)) - vec2<f32>(1309f, 1850f)), _wgslsmith_add_u32(18503u, 0u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-434f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1537f, -403f)), _wgslsmith_f_op_f32(-862f + 1480f))), -1000f, -1000f));
    global0 = any(!vec4<bool>(true, false, (-2147483647i == u_input.c) || all(vec3<bool>(var_0, var_0, false)), var_0));
    var var_2 = 25259i;
    return Struct_2(Struct_1(~(~vec2<i32>(9559i, u_input.c)), _wgslsmith_add_i32(-12567i, -1i) >> (u_input.d.x % 32u)), _wgslsmith_f_op_f32(min(1532f, _wgslsmith_f_op_f32(463f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-248f, -937f, var_0)))))), u_input.d, Struct_1(firstTrailingBit(vec2<i32>(u_input.c, abs(-2147483647i))), ~1i), -abs(~(u_input.c ^ u_input.c)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_3 {
    global0 = any(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)) && any(vec4<bool>(4294967295u >= firstTrailingBit(11172u), all(func_3(vec2<f32>(-205f, 1000f), arg_0.c.x)), any(vec3<bool>(true, false, true)), true));
    return Struct_3(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(1492f, -2726f)) - vec2<f32>(arg_0.b, -469f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, arg_0.b) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(802f, 196f), vec2<f32>(arg_0.b, 1000f)))))), 0u).zx, -2597f, arg_1.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> vec3<f32> {
    var var_0 = vec3<bool>(false, true, false);
    global0 = reverseBits(min(u_input.b.x, 0u)) <= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.e.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(29096u, u_input.b.x, 4294967295u), _wgslsmith_clamp_vec3_u32(u_input.b.wzz, u_input.d.zyy, u_input.d.zzz)));
    global0 = var_0.x;
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(-vec2<i32>(-16855i, 1i), ~vec2<i32>(u_input.c, -28603i));
    var var_2 = Struct_4(func_4(func_2(), vec3<i32>(abs(0i >> (u_input.b.x % 32u)), min(u_input.c, -1i) & -6480i, -2147483647i)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b, 529f, var_2.a.b)) * vec3<f32>(var_2.a.b, _wgslsmith_f_op_f32(157f + -753f), 1015f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1887f, -416f, arg_0)))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2200f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f - -519f) + 885f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1593f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(623f, false)) + vec3<f32>(-220f, -703f, -660f)), vec3<f32>(func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(select(-3021f, -690f, false))))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-557f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(sign(1120f)))), 1f, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_div_f32(var_0.x, -1022f), _wgslsmith_f_op_f32(var_1.x * 1000f), _wgslsmith_f_op_f32(352f - 798f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.x, 641f), vec4<f32>(-1165f, -686f, -1281f, 848f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, 682f, var_1.x) * vec4<f32>(var_1.x, 729f, -231f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-827f, var_1.x, 618f, -958f) + vec4<f32>(-872f, 2108f, var_0.x, 1533f)))))));
    let var_2 = Struct_3(vec2<bool>(!(!(u_input.b.x >= 59835u)), true), func_2().b, 0i);
    global0 = !var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

