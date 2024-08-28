struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = countOneBits(u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-1309f - -2011f)) - _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2)), arg_2)))), !arg_0.x, 1u);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(1222f + 522f))))) - vec2<f32>(-859f, 1000f));
    return ~(-((arg_1 >> (1u % 32u)) >> (var_3.c % 32u)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = vec4<i32>(0i, 1i, -_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-26269i, -21386i, _wgslsmith_mult_i32(-16070i, 0i))), _wgslsmith_sub_i32(-1i, 0i));
    var_0 = ~(-countOneBits(~vec4<i32>(-38235i, var_0.x, 2147483647i, 0i) << (select(vec4<u32>(1u, u_input.a, u_input.b, u_input.c), vec4<u32>(15597u, u_input.a, u_input.a, u_input.a), false) % vec4<u32>(32u))));
    var_0 = vec4<i32>(func_3(vec4<bool>(all(vec4<bool>(true, true, false, false)) | true, true, true, all(vec3<bool>(false, true, true))), var_0.x, 804f), _wgslsmith_mod_i32(var_0.x, 47711i), abs(~_wgslsmith_dot_vec3_i32(-vec3<i32>(7130i, var_0.x, 49617i), vec3<i32>(var_0.x, 0i, 872i))), -(i32(-1i) * -27941i));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, arg_0)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, _wgslsmith_f_op_f32(arg_0 + arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1424f) + vec2<f32>(-1360f, arg_0))))));
    let var_2 = vec3<bool>((var_0.x >> (69208u % 32u)) != -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, 1i), vec4<i32>(var_0.x, 0i, var_0.x, var_0.x)), _wgslsmith_add_i32(var_0.x, -10604i)), select(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), u_input.a > firstTrailingBit(~20571u), var_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(835f, arg_0)) - -752f)), all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec4<bool>(false, true, false, true))), vec2<bool>(select(true, true, true), any(vec4<bool>(true, true, false, true))), !(var_0.x > var_0.x))));
    return select(select(var_2, !var_2, vec3<bool>((var_0.x & 62271i) != _wgslsmith_add_i32(0i, var_0.x), any(!var_2), false)), var_2, !vec3<bool>(true & (var_2.x && var_2.x), all(var_2) | any(var_2.yz), false));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = (abs(_wgslsmith_add_u32(arg_0.c, _wgslsmith_mod_u32(0u, arg_0.c))) > arg_0.c) && any(select(vec2<bool>(arg_0.b, arg_0.b), !(!vec2<bool>(arg_0.b, arg_0.b)), !vec2<bool>(arg_0.b, false)));
    var var_1 = arg_1;
    var_1 = 0i;
    let var_2 = vec2<i32>(2147483647i, arg_1);
    let var_3 = select(vec3<bool>(!(arg_0.b || (u_input.c == u_input.c)), _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a - -715f))), ~_wgslsmith_add_u32(81708u, 0u) >= u_input.b), select(!vec3<bool>(arg_0.b || false, arg_0.b || true, true), select(func_2(_wgslsmith_f_op_f32(-arg_0.a)), vec3<bool>(arg_0.b, arg_0.b, true), !(!arg_0.b)), -1174f > _wgslsmith_f_op_f32(arg_0.a - arg_0.a)), !vec3<bool>(false, arg_0.b, true));
    return Struct_2(min(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-44816i, var_2.x, arg_1), select(vec3<i32>(arg_1, arg_1, 0i), vec3<i32>(3036i, var_2.x, 0i), vec3<bool>(false, arg_0.b, true))), vec3<i32>(arg_1, -var_2.x, _wgslsmith_mod_i32(var_2.x, 25340i)), -(~vec3<i32>(-13210i, var_2.x, -41575i))), -vec3<i32>(38473i, countOneBits(56327i), -11175i)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -992f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-510f, 1981f)))));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1559f), true, _wgslsmith_mod_u32(select(select(85412u, u_input.a, false), ~u_input.b, false), 32566u)), ~50736i);
    var_0 = false;
    let var_2 = !vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(975f * 1641f))), 483f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(452f + -993f), _wgslsmith_f_op_f32(f32(-1f) * -652f), true)), _wgslsmith_add_i32(abs(var_1.a.x), var_1.a.x) >= abs(var_1.a.x ^ var_1.a.x));
    var_0 = _wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(abs(1253f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-685f * -717f), _wgslsmith_f_op_f32(f32(-1f) * -983f), true))));
    var var_3 = !vec3<bool>(true, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) - 1000f)).x, var_2.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & ~_wgslsmith_sub_u32(u_input.b, max(0u, u_input.a)), abs(1u));
}

