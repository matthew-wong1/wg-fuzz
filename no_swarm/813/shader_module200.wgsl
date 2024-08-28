struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global0 = Struct_1(global0.a);
    var var_0 = !(((_wgslsmith_mod_u32(1u, 19347u) >> (0u % 32u)) == _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), abs(vec2<u32>(49502u, 4294967295u)))) & global0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2734f)), -665f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1018f, 146f) - vec3<f32>(210f, 462f, 503f))))));
    let var_2 = vec3<bool>(!(!(global0.a | true)), !(!any(vec4<bool>(global0.a, global0.a, global0.a, false))) & global0.a, true);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, _wgslsmith_f_op_f32(sign(-909f)), -1361f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-758f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 2074f, var_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(-743f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 912f)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(var_1.x, 917f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, -262f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, var_1.x, var_1.x) - vec3<f32>(130f, var_1.x, -1000f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, -1282f), vec3<f32>(-2143f, 105f, -937f))))))));
    return var_2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(true, any(vec2<bool>(global0.a, global0.a)), all(!vec4<bool>(global0.a, false, global0.a, false)) & any(vec3<bool>(false, global0.a, global0.a))));
    var_0 = Struct_1(select(func_3(), all(select(!vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(global0.a, false, global0.a), vec3<bool>(true, global0.a, global0.a))), true));
    var_0 = Struct_1(var_0.a);
    var var_1 = Struct_1(var_0.a);
    var var_2 = true;
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 603f;
    let var_1 = Struct_1(true);
    var var_2 = func_2();
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = func_4(func_2());
    var var_0 = vec3<u32>(~1u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38178u, 1u), vec2<u32>(53253u, 0u)) << (1u % 32u), ~_wgslsmith_mod_u32(42237u, 1u))), ~_wgslsmith_mult_u32(1u, 1u));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1366f)));
    let var_3 = -countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 21669i), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.a.x << (var_0.x % 32u)) << (abs(~0u) % 32u));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1086f + _wgslsmith_f_op_f32(-434f - -353f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(func_1(Struct_1(true), -871f, Struct_1(true))))))));
    global0 = Struct_1(global0.a && true);
    global0 = Struct_1(func_2().a);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-var_0))), -364f, _wgslsmith_f_op_f32(trunc(var_0)))));
    global0 = Struct_1(global0.a);
    global0 = func_4(Struct_1(false));
    let var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(var_1)))), vec4<f32>(-176f, _wgslsmith_f_op_f32(round(var_1.x)), var_1.x, _wgslsmith_div_f32(-1886f, -272f)), vec4<bool>(true, true, global0.a | global0.a, global0.a))), var_1, !vec4<bool>(global0.a, true, !global0.a, true))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -5726i) >> (abs(1u) % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, var_2, var_2), vec3<i32>(var_2, -1i, u_input.b.x)), -2147483647i, -var_2), u_input.a), 81158u, u_input.b, vec4<u32>(0u, ~_wgslsmith_div_u32(1u, reverseBits(4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 34099u, 1u), vec3<u32>(21656u, 19519u, 51336u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1056u, 36327u, 20350u, 52397u), ~vec4<u32>(15775u, 1u, 0u, 42237u))));
}

