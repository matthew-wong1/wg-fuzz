struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<i32>(-1i, i32(-2147483648), -22412i), Struct_1(1u), vec4<f32>(-1296f, -312f, 1825f, 498f), Struct_1(4294967295u), 0u), 637f, 92803u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = -429f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-218f, global1.a.c.x, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1900f)), 246f)) * _wgslsmith_f_op_vec4_f32(-global1.a.c));
    global1 = Struct_3(Struct_2(vec3<i32>(~u_input.c.x & ~global1.a.a.x, -_wgslsmith_sub_i32(0i, u_input.c.x), -(~15757i)), Struct_1(42142u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1245f, -222f, var_1.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b, var_1.x, global1.b, 1011f))))), global1.a.d, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_dot_vec2_u32(~(select(vec2<u32>(4294967295u, 1836u), u_input.b.wz, vec2<bool>(false, false)) << (u_input.b.yy % vec2<u32>(32u))), u_input.b.wx));
    var_1 = global1.a.c;
    var_1 = vec4<f32>(-1760f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(-global1.a.c.x))))), _wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return min(select(global1.c, 4294967295u & _wgslsmith_clamp_u32(~1u, u_input.a >> (1u % 32u), max(global1.c, global1.a.e)), all(vec3<bool>(true, true, true))), global1.c);
}

fn func_2() -> Struct_2 {
    let var_0 = 711f;
    var var_1 = _wgslsmith_add_u32(global1.a.d.a, 1u);
    global0 = Struct_1(global1.a.d.a);
    var var_2 = Struct_2(vec3<i32>(u_input.c.x, u_input.c.x & 0i, u_input.c.x), Struct_1(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(global1.a.b.a, 68078u)), abs(vec2<u32>(1u, 1u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-556f, var_0), var_0, _wgslsmith_f_op_f32(global1.b + 1265f), _wgslsmith_f_op_f32(abs(global1.a.c.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.a.c)))))), Struct_1(reverseBits(global1.a.d.a)), ~_wgslsmith_add_u32(~(~54768u), func_3()));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-347f))) + global1.b);
    return Struct_2(-(vec3<i32>(-global1.a.a.x, _wgslsmith_sub_i32(1i, 0i), 0i) >> (_wgslsmith_mult_vec3_u32(u_input.b.wxz & vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(1u, 1u, 0u)) % vec3<u32>(32u))), global1.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -297f, var_2.c.x, global1.a.c.x)), Struct_1(~0u), 26058u);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = global1.a.d;
    let var_1 = func_2();
    var var_2 = ~_wgslsmith_add_u32(0u, var_0.a);
    let var_3 = global1.a.d;
    var_2 = var_0.a;
    return Struct_3(Struct_2(~vec3<i32>(~var_1.a.x, 2147483647i | global1.a.a.x, _wgslsmith_clamp_i32(global1.a.a.x, var_1.a.x, 1i)), func_2().b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, 1580f, var_1.c.x, 1583f))))), global1.a.d, ~_wgslsmith_dot_vec2_u32(u_input.b.yx, min(u_input.b.yy, u_input.b.xw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-350f, _wgslsmith_div_f32(arg_0, global1.b)))))), ~firstLeadingBit(_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(var_3.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.a.c.x);
    var var_0 = func_2().b;
    var_0 = Struct_1(firstTrailingBit(global1.a.b.a));
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, false)) && true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), false), vec4<bool>(true || (-203f == global1.b), any(vec2<bool>(true, true)), global1.a.a.x <= global1.a.a.x, !select(false, false, false))), vec4<bool>(false, !all(vec3<bool>(true, true, true)), true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, false), true))), !(false && (11291u <= _wgslsmith_mod_u32(var_0.a, global0.a))));
    var var_2 = var_1;
    global0 = global1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u ^ _wgslsmith_dot_vec3_u32(u_input.b.zyx, u_input.b.wwz))), u_input.b.www, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-552f, _wgslsmith_f_op_f32(global1.b * global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.x - 1651f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.a.c.x, global1.b))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(-global1.b), global1.a.c.x))), ~select(_wgslsmith_add_vec4_u32(u_input.b, u_input.b ^ vec4<u32>(var_0.a, 0u, u_input.a, global0.a)), ~(~u_input.b), all(select(vec4<bool>(false, var_2.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, false), false))));
}

