struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = 1i;
    var var_2 = -1967f;
    var var_3 = i32(-1i) * -_wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(23187i, -55346i, -32769i), 28970i), u_input.c.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(518f * 822f))));
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_2(Struct_1(-1501f), false, vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)));
    let var_1 = vec4<bool>(false, any(select(vec4<bool>(true, true, true, true), func_2(Struct_1(-712f), true, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), true, !(abs(~1u) < u_input.b.x));
    var var_2 = Struct_2(var_1, vec2<bool>(all(!vec3<bool>(false, var_1.x, var_1.x)), func_2(Struct_1(_wgslsmith_f_op_f32(min(-2653f, 1318f))), true, select(!vec4<bool>(var_1.x, false, false, var_1.x), !var_1, any(var_1.wx))).x));
    var var_3 = !var_1.x;
    var_2 = Struct_2(var_2.a, var_1.zw);
    return Struct_1(_wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -374f)))))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> vec3<u32> {
    var var_0 = 57077i;
    var_0 = ~countOneBits(u_input.c.x);
    var var_1 = Struct_2(vec4<bool>(!(u_input.c.x > (-2147483647i ^ u_input.a.x)), !select(any(vec4<bool>(true, true, false, arg_1)), true & arg_1, u_input.b.x <= u_input.b.x), any(select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), vec2<bool>(arg_1, arg_1)), !arg_1)), true), vec2<bool>((true & !arg_1) != !func_2(Struct_1(1000f), false, vec4<bool>(false, false, true, arg_1)).x, true));
    let var_2 = Struct_2(!vec4<bool>(all(var_1.a.ywx) || (true && arg_1), true, !(!var_1.a.x), true), !select(select(select(var_1.a.xx, var_1.a.zx, var_1.a.wx), func_2(Struct_1(2070f), var_1.a.x, var_1.a).xz, vec2<bool>(var_1.b.x, var_1.b.x)), vec2<bool>(true, !arg_1), var_1.a.xz));
    var var_3 = ~select(u_input.c.x, _wgslsmith_div_i32(i32(-1i) * -u_input.c.x, u_input.a.x), true);
    return select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 3808u), ~31450u), _wgslsmith_sub_u32(arg_2, 17109u), _wgslsmith_clamp_u32(~57233u, 1u, u_input.b.x & 1u)), countOneBits(u_input.b.wwx)), u_input.b.zwz, func_2(func_1(), arg_1, select(!vec4<bool>(arg_1, var_2.b.x, var_2.b.x, true), vec4<bool>(arg_1, var_2.b.x, true, arg_1), select(func_2(Struct_1(-549f), false, vec4<bool>(false, arg_1, var_2.a.x, false)), !vec4<bool>(arg_1, var_1.b.x, false, var_1.a.x), all(vec2<bool>(arg_1, arg_1))))).zzw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.b.xwy >> (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -463f), true, u_input.b.x), select(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), _wgslsmith_add_vec3_u32(u_input.b.zyy, u_input.b.zxy), vec3<bool>(false, false, true))), func_3(var_0.a, all(vec2<bool>(true, true)), u_input.b.x)) % vec3<u32>(32u));
    let var_2 = Struct_2(vec4<bool>(true, false, !(!any(vec3<bool>(false, true, true))), all(vec4<bool>(true, true, true, true))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    var_0 = func_1();
    var_0 = func_1();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(-984f, var_0.a, 1151f)) - vec3<f32>(1000f, 1864f, var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -573f, -145f) * vec3<f32>(var_0.a, 894f, 1211f)) * vec3<f32>(472f, var_0.a, var_0.a))))));
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~max(u_input.c.x, u_input.c.x), 0i) | u_input.c.zx, vec3<i32>(-14529i, 5851i, -(~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(977f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, countOneBits(u_input.a.x << (var_1.x % 32u)), u_input.c.x, firstTrailingBit(u_input.a.x)), ~vec4<i32>(min(0i, 2147483647i), min(u_input.c.x, 149i), _wgslsmith_clamp_i32(1i, 1i, u_input.c.x), 25276i)));
}

