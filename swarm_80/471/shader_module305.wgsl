struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = 32307i;
    let var_1 = var_0;
    var var_2 = global1.c.xx;
    var var_3 = select(vec2<bool>(!((false && global1.b.x) || global1.b.x), global1.b.x), !select(!vec2<bool>(false, global1.b.x), !vec2<bool>(true, global1.b.x), global1.b.x), select(!vec2<bool>(global1.b.x, true), vec2<bool>(any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)), any(vec3<bool>(global1.b.x, true, false))), global1.b.x));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - var_2.x), 1000f), var_2.x))), global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.c), vec4<f32>(-649f, 706f, -571f, global0.x)))))));
    return global1.b.wy;
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(global1.a, !global1.b, global1.c);
    global0 = _wgslsmith_f_op_vec4_f32(exp2(global1.c));
    let var_0 = Struct_4(u_input.a.yy);
    let var_1 = u_input.a.x;
    let var_2 = global1.b.x;
    return Struct_1(func_3(), vec3<bool>(any(select(select(global1.b.yz, vec2<bool>(false, true), false), vec2<bool>(false, true), select(global1.b.zx, vec2<bool>(global1.b.x, false), vec2<bool>(false, global1.b.x)))), all(vec2<bool>(any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)), all(vec3<bool>(true, global1.b.x, true)))), select(false, true, true)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<u32>(u_input.a.x, 1u, 25646u)), _wgslsmith_clamp_u32(60580u, var_0.a.x, u_input.a.x), var_1 << (0u % 32u), ~var_0.a.x), ~u_input.a), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(11432u, 4294967295u, u_input.a.x), countOneBits(vec3<u32>(0u, var_0.a.x, u_input.a.x)))), _wgslsmith_mult_u32(u_input.a.x, ~var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), !vec4<bool>(any(!global1.b.yx), !global1.b.x, global1.b.x, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = global0.yy;
    let var_1 = -(~_wgslsmith_sub_vec2_i32(firstTrailingBit(~vec2<i32>(-1i, -1i)), -(~vec2<i32>(1i, -4654i))));
    let var_2 = Struct_4(arg_1.c.xx);
    let var_3 = vec3<u32>(u_input.a.x, ~arg_1.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.x, 1u), ~countOneBits(vec2<u32>(1u, u_input.a.x)))) & ~vec3<u32>(var_2.a.x, arg_1.c.x, ~(~arg_1.c.x));
    global0 = _wgslsmith_f_op_vec4_f32(-global1.c);
    return global1.c;
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    global1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -1087f)))), arg_0.x), global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(630f, -836f, 1000f), func_2(), Struct_2(vec2<f32>(global0.x, global1.c.x), vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<f32>(arg_0.x, -251f, 1000f, -2018f)))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global0.x) * global1.c.xy), vec2<f32>(167f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1971f, arg_0.x)), func_2().e.yz)) + global0.zz), vec4<bool>(true, global1.b.x, any(vec4<bool>(false, true, global1.b.x, global1.b.x)) != any(vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x)), global1.b.x), vec4<f32>(_wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(global0.zzx, Struct_1(vec2<bool>(global1.b.x, global1.b.x), global1.b.xyy, vec3<u32>(0u, u_input.a.x, 4294967295u), global1.c.x, vec4<bool>(true, false, true, false)), Struct_2(arg_0, vec4<bool>(global1.b.x, global1.b.x, true, true), global1.c))).x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global1 = var_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-global1.a.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1783f * 1240f) * func_2().d), -620f))), -288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.a.x, 870f, var_0.b.x)))))), 2213f);
    let var_1 = max(min(vec2<i32>(1i, firstTrailingBit(select(2147483647i, 0i, false))), vec2<i32>(firstLeadingBit(-21308i >> (u_input.a.x % 32u)), 1i)), -(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(-62615i, -2147483647i))));
    return _wgslsmith_add_vec3_u32(~firstLeadingBit(u_input.a.wxw ^ u_input.a.xyx) ^ u_input.a.yzy, ~_wgslsmith_mult_vec3_u32(u_input.a.wxw, ~firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec3_u32(~u_input.a.wwy, ~(~vec3<u32>(u_input.a.x, 72020u, u_input.a.x)) ^ func_1(global1.a));
    global1 = Struct_2(vec2<f32>(191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(global0.x, 282f, -542f), Struct_1(global1.b.xx, global1.b.wwz, u_input.a.xwz, -117f, global1.b), Struct_2(vec2<f32>(-739f, global1.c.x), global1.b, global1.c))).x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1360f, -187f, global1.b.x)))))), !global1.b, vec4<f32>(global1.a.x, global0.x, func_2().d, _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(global0.yyz)), _wgslsmith_f_op_vec3_f32(floor(global0.wzy)))), func_2(), Struct_2(global0.zy, vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), global1.c))).x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, global1.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -645f)));
}

