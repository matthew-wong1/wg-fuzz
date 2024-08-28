struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<f32>(154f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * arg_0))), select(vec4<bool>(true, 450f >= arg_0, u_input.b.x > 1u, arg_0 >= arg_0), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))));
    var_0 = Struct_2(var_0.a);
    let var_1 = ~(_wgslsmith_mod_u32(71931u, u_input.b.x & _wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x)) ^ (~(~u_input.b.x) >> (~63498u % 32u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(var_0.a.a.x, 775f))) + vec2<f32>(-1150f, _wgslsmith_f_op_f32(exp2(arg_0)))), vec4<bool>(true, true, var_0.a.b.x || false, false)));
    var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(var_0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(var_0.a.a - var_0.a.a))), !var_0.a.b));
    return all(vec4<bool>(true, (arg_0 != -846f) == !var_0.a.b.x, select(true, true, true), false));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), -1000f), vec4<bool>(true, any(vec2<bool>(true, false)), any(vec2<bool>(true, true)), !func_3(159f))));
    let var_1 = true;
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-696f, var_0.a.a.x), var_0.a.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(323f, var_0.a.a.x), var_0.a.a)), !var_1))), vec4<bool>(_wgslsmith_f_op_f32(step(var_0.a.a.x, -2325f)) == _wgslsmith_f_op_f32(f32(-1f) * -430f), var_1, (u_input.b.x < u_input.b.x) || !var_1, _wgslsmith_f_op_f32(min(var_0.a.a.x, var_0.a.a.x)) <= 223f)));
    var_0 = Struct_2(var_0.a);
    return Struct_2(var_0.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = ~u_input.a.x;
    var var_2 = 7657i;
    var_2 = -2147483647i;
    var_2 = countOneBits(var_1);
    return Struct_2(func_2().a);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = vec3<bool>(!func_1().a.b.x, !(arg_1 > _wgslsmith_f_op_f32(floor(arg_0.a.a.x))), arg_0.a.b.x);
    var_1 = select(vec3<bool>(true, false && any(!vec4<bool>(arg_0.a.b.x, var_0.a.b.x, true, arg_0.a.b.x)), func_2().a.b.x), vec3<bool>(28924i > arg_3.x, var_0.a.b.x, any(select(vec2<bool>(var_0.a.b.x, false), var_0.a.b.yz, arg_0.a.b.yy)) | func_3(_wgslsmith_f_op_f32(-arg_1))), !select(vec3<bool>(717u != arg_2.x, !arg_0.a.b.x, var_0.a.b.x), !arg_0.a.b.xxy, !(!var_0.a.b.zyw)));
    var var_2 = func_2().a;
    var var_3 = vec2<u32>(~_wgslsmith_sub_u32(arg_2.x, abs(u_input.b.x | 4294967295u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw) << (_wgslsmith_mult_vec2_u32(u_input.b.yw, arg_2.wz) % vec2<u32>(32u)), u_input.b.yw));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-173f, 954f) - _wgslsmith_f_op_f32(trunc(671f)))) + var_0.a.a), vec4<bool>(true, true, true, all(arg_0.a.b.zxw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f)), vec4<u32>(~(~_wgslsmith_div_u32(7067u, u_input.b.x)), _wgslsmith_div_u32(~(~u_input.b.x), u_input.b.x), 4915u >> (~(u_input.b.x | u_input.b.x) % 32u), u_input.b.x), -firstLeadingBit(-vec2<i32>(u_input.a.x, 31384i)));
    let var_1 = func_1();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, var_1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1812f)), -1665f)) * _wgslsmith_f_op_f32(f32(-1f) * -919f)), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(floor(-174f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(1080f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)))), -774f);
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1032f - var_2.x), var_1.a.a.x), func_2().a.a.x, var_1.a.a.x, 225f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-580f, var_1.a.a.x, 871f, -1116f), _wgslsmith_f_op_vec4_f32(vec4<f32>(908f, var_2.x, -1181f, var_0.a.x) - vec4<f32>(var_1.a.a.x, -239f, 163f, var_1.a.a.x)), !var_1.a.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_2.x, 243f, var_2.x)))));
    var var_3 = ~u_input.b.x;
    let var_4 = vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(reverseBits(u_input.b.x), 55809u)), max(u_input.b.x, ~22765u), _wgslsmith_clamp_u32(u_input.b.x ^ _wgslsmith_add_u32(select(26075u, u_input.b.x, false), firstTrailingBit(4294967295u)), _wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.xwy)), select(0u, firstLeadingBit(firstTrailingBit(1u)), true)), _wgslsmith_mult_u32(~(~countOneBits(0u)), ~(~_wgslsmith_mod_u32(u_input.b.x, 4294967295u))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, var_0.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.yx, var_0.a))) * func_1().a.a) - vec2<f32>(func_2().a.a.x, 1135f));
    let x = u_input.a;
    s_output = StorageBuffer(446f, var_0.a.x, abs(~(var_4 ^ select(u_input.b, vec4<u32>(33616u, 75268u, 6666u, 38461u), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(740f)))))), _wgslsmith_clamp_u32(u_input.b.x, abs(min(var_4.x, _wgslsmith_div_u32(12273u, u_input.b.x))), 0u << (var_4.x % 32u)));
}

