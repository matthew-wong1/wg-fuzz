struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(abs(~(vec2<u32>(u_input.b.x, 63627u) | _wgslsmith_sub_vec2_u32(u_input.b, u_input.b))), u_input.b);
    global0 = vec3<bool>(true, any(!select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))) | !all(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x))), true);
    let var_1 = -(~max(2147483647i, u_input.c.x)) ^ u_input.a;
    let var_2 = vec4<bool>(!(global0.x && (var_0.x < u_input.b.x)) != (global0.x || !(global0.x && global0.x)), global0.x, false, true);
    let var_3 = select(var_2, var_2, vec4<bool>(!(all(vec2<bool>(global0.x, global0.x)) != false), false, var_2.x, var_2.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1900f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1158f, -1000f, global0.x)) * -826f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(vec4<u32>(19398u, ~(4294967295u & ~u_input.b.x), max(_wgslsmith_mod_u32(34856u, ~45117u), ~u_input.b.x << (_wgslsmith_div_u32(u_input.b.x, 4294967295u) % 32u)), u_input.b.x));
    var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(countOneBits(1u), 1u)), ~firstLeadingBit(41305u), _wgslsmith_div_u32(68574u, u_input.b.x), u_input.b.x);
    let var_1 = vec2<f32>(-1243f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 410f) - _wgslsmith_f_op_f32(func_3())))));
    global0 = !vec3<bool>(false, !(!global0.x), any(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), select(global0.x, true, true))));
    var var_2 = ~u_input.c.zy;
    return Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 1125f))) + 828f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -960f), var_1.x, 212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))), var_0.x);
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = Struct_2(vec2<bool>(all(vec3<bool>(all(vec2<bool>(global0.x, global0.x)), global0.x, true)), global0.x), ~countOneBits(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(58277u, u_input.b.x, u_input.b.x)), 132037u, _wgslsmith_div_u32(4294967295u, 1u))), func_2(), func_2(), _wgslsmith_mod_i32(arg_1, arg_1));
    let var_1 = true;
    var var_2 = select(vec4<bool>(any(!vec3<bool>(global0.x, var_0.c.a, var_0.d.a)), any(vec3<bool>(global0.x == true, func_2().a, true)), !(~(-7738i) < var_0.e), true), select(!vec4<bool>(func_2().a, false, select(true, var_0.c.a, var_1), arg_0), !vec4<bool>(var_0.c.a, false, true, true), !var_1 & false), !select(vec4<bool>(true, any(vec4<bool>(arg_0, global0.x, false, var_1)), true, var_1 && false), !vec4<bool>(var_0.d.a, arg_0, false, false), any(vec3<bool>(global0.x, false, var_0.d.a))));
    var var_3 = firstLeadingBit(~(~var_0.b.zyz));
    let var_4 = u_input.b.x & _wgslsmith_mod_u32(~var_0.d.e, ~(var_3.x ^ ~44300u));
    return any(vec3<bool>(!((1361f > var_0.d.c) & true), false, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = func_2();
    let var_2 = all(select(arg_2, arg_2, vec4<bool>(!any(arg_2), !(arg_2.x | false), u_input.a <= -1i, !(!arg_2.x))));
    let var_3 = arg_0;
    global0 = vec3<bool>(global0.x, !all(!arg_2), true);
    return vec3<bool>((-35327i ^ (_wgslsmith_mod_i32(2147483647i, -1i) ^ u_input.c.x)) >= (~(u_input.c.x >> (u_input.b.x % 32u)) | -2147483647i), -46099i < u_input.a, ~_wgslsmith_add_u32(~0u, _wgslsmith_mod_u32(var_1.e, 1u)) <= ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec3<bool>(true, global0.x, true), !select(vec3<bool>(select(true, true, false), any(vec3<bool>(false, global0.x, false)), true), vec3<bool>(global0.x, all(vec3<bool>(false, global0.x, global0.x)), global0.x), vec3<bool>(!global0.x, true, global0.x)), func_4(Struct_1(true, -1045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1268f - -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, -176f, -415f, 1433f)) + vec4<f32>(-1243f, -564f, -317f, -674f)), ~min(u_input.b.x, u_input.b.x)), u_input.b, !select(!vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, true, false, false), false), func_1(false, u_input.a)), 1001f));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))))) - _wgslsmith_f_op_f32(sign(-1429f))));
    let var_1 = Struct_2(global0.yy, min(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(3875u, 1u, 45521u, 83505u)), vec4<u32>(~54069u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 41600u, 1u)) & ~(~firstTrailingBit(vec4<u32>(u_input.b.x, 28198u, u_input.b.x, u_input.b.x))), func_2(), func_2(), -1i << ((_wgslsmith_add_u32(_wgslsmith_add_u32(7590u, u_input.b.x), 4294967295u >> (u_input.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 55374u, u_input.b.x, u_input.b.x)), vec4<u32>(4294967295u, u_input.b.x, 10141u, 45516u)) % 32u)) % 32u));
    let var_2 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) + var_1.d.c));
    let var_3 = ~(-u_input.c.x);
    global0 = vec3<bool>(!(!var_1.c.a), (true || any(vec2<bool>(true, true))) || func_4(func_2(), abs(~var_1.b.yy), vec4<bool>(global0.x || false, var_1.c.a, var_1.d.e > var_1.b.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))).x, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

