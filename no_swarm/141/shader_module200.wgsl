struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = Struct_2(global0.a, firstLeadingBit(max(_wgslsmith_sub_u32(global0.b, 38154u), arg_2.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(714f))))), arg_1, -1421f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(372f, arg_2.c.x, arg_1, arg_2.c.x))))));
    let var_2 = abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(abs(u_input.a), u_input.a << (26136u % 32u), ~u_input.a)), min(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 1549i, 73076i)), vec3<i32>(u_input.a | 1i, -u_input.a, u_input.a)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a)), firstTrailingBit(0i)), u_input.a, -_wgslsmith_div_i32(0i, u_input.a))));
    var var_3 = !all(vec3<bool>(arg_0.a, !(var_0.a == global0.a), arg_2.a));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.ww)) * var_0.c.yz));
    return -1180i;
}

fn func_2() -> bool {
    let var_0 = Struct_2((global0.c.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))) && true, global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c.x, 484f, 1097f)) * vec4<f32>(1247f, 936f, global0.c.x, 1799f))) + vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-562f * 1f), _wgslsmith_f_op_f32(round(828f)), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-global0.c.x)))));
    global0 = var_0;
    var var_1 = max(_wgslsmith_sub_i32(func_3(var_0, -747f, var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.x, -887f), -1000f)), 2147483647i), u_input.a);
    let var_2 = -1730i;
    let var_3 = ~vec2<u32>(_wgslsmith_mult_u32(1u, ~4294967295u), 71398u);
    return all(vec4<bool>(true, var_0.a, global0.a, false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    global0 = arg_0;
    return _wgslsmith_sub_vec2_i32(reverseBits(max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -911i), vec2<i32>(u_input.a, -2575i)), u_input.a), -reverseBits(vec2<i32>(u_input.a, u_input.a)))), min(~firstLeadingBit(abs(vec2<i32>(39832i, 1i))), countOneBits(~abs(vec2<i32>(-56123i, u_input.a)))));
}

fn func_1(arg_0: u32) -> i32 {
    global0 = Struct_2(false, arg_0, global0.c);
    var var_0 = vec3<u32>(1u, _wgslsmith_div_u32(arg_0, ~((global0.b << (42924u % 32u)) << (2192u % 32u))), ~global0.b);
    let var_1 = -func_4(Struct_2(func_2(), ~1u, _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(944f, 353f, global0.c.x, 1283f))), Struct_2(false, _wgslsmith_div_u32(~35562u, 1u), vec4<f32>(598f, global0.c.x, global0.c.x, _wgslsmith_f_op_f32(-global0.c.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(round(global0.c)));
    var var_3 = select(select(!vec2<bool>(all(vec2<bool>(false, true)), global0.a), select(select(vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a)), select(vec2<bool>(false, global0.a), vec2<bool>(true, true), select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, true), global0.a)), u_input.a > _wgslsmith_sub_i32(-29705i, u_input.a)), true), !(!select(!vec2<bool>(global0.a, true), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), vec2<bool>(global0.a, true)), true)), select(!select(vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, true), !vec2<bool>(global0.a, global0.a)), vec2<bool>(false, false), vec2<bool>(!(u_input.a != -1i), global0.a)));
    return -33064i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.a != !(global0.c.x >= _wgslsmith_f_op_f32(min(1363f, global0.c.x))), _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 4294967295u)), firstTrailingBit(vec2<u32>(157u, global0.b))), global0.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.x, global0.c.x, -702f, 593f))));
    let var_1 = _wgslsmith_mod_vec4_i32(~countOneBits(~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -1i, 0i))), vec4<i32>(func_1(0u), ~22216i, ~(~u_input.a), ~(-1i)));
    var var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(var_1.x, 2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, global0.b, 20706u, 4294967295u), vec4<u32>(0u, var_0.b, var_0.b, 1u)) % 32u)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(1217f, ~61898u, var_0.b);
}

