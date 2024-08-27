struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-54008i, 69333i);

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_2.a.yy;
    let var_1 = Struct_2(true | !(!arg_2.a.x));
    var var_2 = Struct_2(arg_2.a.x);
    global0 = vec2<i32>(-global0.x, 15426i);
    let var_3 = 43232u;
    return arg_2.b.xz;
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-1930f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(abs(1f)))) - -1906f));
    global1 = Struct_2(global1.a);
    var var_1 = vec2<f32>(-2023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))) - 736f));
    global0 = vec2<i32>(~global0.x, 1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(reverseBits(1u), _wgslsmith_f_op_f32(floor(var_1.x)), Struct_1(vec3<bool>(global1.a, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-217f, var_1.x, -838f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -403f, var_0))))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, var_2.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_0, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(884f, -759f, 1058f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-130f, 703f, 473f), vec3<f32>(var_2.x, 1089f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, var_2.x, var_0) - vec3<f32>(var_0, -508f, var_2.x)), select(vec3<bool>(false, false, global1.a), vec3<bool>(global1.a, global1.a, global1.a), false))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-732f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), -639f));
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    global1 = Struct_2(!all(vec2<bool>(all(vec3<bool>(false, global1.a, false)), true)));
    let var_0 = vec4<bool>(global1.a, arg_1, global1.a, all(vec3<bool>(false, true, any(select(vec4<bool>(global1.a, global1.a, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, global1.a), vec4<bool>(global1.a, false, arg_1, global1.a))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -736f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, 922f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) - _wgslsmith_f_op_f32(-228f + -718f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1186f, arg_0)))));
    let var_2 = Struct_1(!select(var_0.wxz, select(var_0.yxz, var_0.zyx, !var_0.wwz), var_0.x), _wgslsmith_f_op_vec3_f32(var_1.wxz - _wgslsmith_f_op_vec3_f32(func_2())));
    let var_3 = ~_wgslsmith_div_i32(abs(select(global0.x, -27975i, true)), global0.x);
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), -1425f) < 522f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(true);
    global0 = min(~u_input.a, -min(~u_input.a, vec2<i32>(u_input.a.x, 32368i))) << (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, 30578u), abs(u_input.b)), vec2<u32>(u_input.b | 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1515u), vec2<u32>(0u, u_input.b))))) % vec2<u32>(32u));
    let var_0 = global1.a;
    global0 = ~vec2<i32>(global0.x, min(38327i, abs(global0.x)));
    var var_1 = select(select(vec4<bool>(all(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a), false)), global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 84439u), vec3<u32>(0u, 66896u, 1u)) <= ~51063u, !(global1.a || true)), vec4<bool>(true, global1.a, false, func_1(-1175f, true)), !vec4<bool>(true, true, any(vec4<bool>(global1.a, global1.a, global1.a, true)), true)), vec4<bool>(u_input.b <= u_input.b, false, !global1.a, select(false, global1.a, _wgslsmith_clamp_u32(0u, u_input.b, 57267u) >= 1u)), !select(vec4<bool>(global1.a || false, global1.a, true, false), select(select(vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, global1.a, global1.a, true)), !vec4<bool>(global1.a, global1.a, global1.a, true), true), select(select(vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(global1.a, global1.a, true, false), vec4<bool>(global1.a, global1.a, false, global1.a)), !vec4<bool>(global1.a, global1.a, global1.a, global1.a), any(vec2<bool>(true, true)))));
    var var_2 = ~(~vec2<u32>(u_input.b, u_input.b));
    let var_3 = var_1.zw;
    let var_4 = ~u_input.a.x & _wgslsmith_mod_i32(i32(-1i) * -(global0.x | 0i), -266i);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_2.x << (u_input.b % 32u), firstTrailingBit(1u)), (vec3<u32>(1u, 1u, 26868u) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) >> (vec3<u32>(6894u, var_2.x, 1u) % vec3<u32>(32u))), 63075u, true), _wgslsmith_mod_vec3_u32(~max(~vec3<u32>(var_2.x, 21181u, var_2.x), min(vec3<u32>(1u, 60456u, var_2.x), vec3<u32>(21966u, 4294967295u, 13288u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 10864u, 0u), vec3<u32>(var_2.x, 27017u, u_input.b) & vec3<u32>(41284u, u_input.b, u_input.b))));
}

