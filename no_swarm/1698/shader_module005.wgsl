struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2607f, 914f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1645f, -156f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 1887f)))))))));
    let var_2 = Struct_1(abs(~59065u), u_input.e ^ 2147483647i, all(vec3<bool>(true, false, countOneBits(var_0.b) == _wgslsmith_clamp_u32(0u, arg_0.b, u_input.a))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.c.x), vec3<i32>(u_input.e, -3755i, 1i)), u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(509f, var_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), -716f)));
    let var_3 = min(-vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(var_2.d.x, var_2.d.x), ~u_input.c.x), var_2.d.x), var_2.d);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)), -1960f);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(all(vec3<bool>(true, true, true)), abs(arg_0) ^ (u_input.d ^ u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(true, var_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1437f, 185f)))), vec2<f32>(-991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f + -741f) + _wgslsmith_f_op_f32(618f * -1025f)))));
    var var_2 = vec4<bool>(true, !((max(9191u, u_input.d) < firstTrailingBit(4294967295u)) & false), any(select(vec2<bool>(var_0.a, false), vec2<bool>(true, false), true)) | true, any(select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, var_0.a))) || all(select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), vec2<bool>(false, true)), !vec2<bool>(var_0.a, var_0.a), var_0.a)));
    var_0 = Struct_2(!(!(1i <= _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 0i, u_input.e)))), reverseBits(1u << (~(~u_input.a) % 32u)));
    var_2 = !select(select(select(select(vec4<bool>(true, false, var_0.a, true), vec4<bool>(var_2.x, var_2.x, var_0.a, true), vec4<bool>(false, var_2.x, false, var_2.x)), !vec4<bool>(true, false, false, var_0.a), all(vec2<bool>(false, var_2.x))), vec4<bool>(true, false, all(vec4<bool>(var_0.a, false, true, var_0.a)), any(vec2<bool>(var_0.a, true))), !(!var_0.a)), select(vec4<bool>(false, true, true, any(vec4<bool>(var_0.a, var_2.x, var_0.a, var_0.a))), select(vec4<bool>(var_2.x, false, true, true), select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_2.x, var_0.a, false, true), vec4<bool>(var_0.a, true, var_2.x, true)), !vec4<bool>(var_0.a, false, var_0.a, false)), vec4<bool>(true, true, all(vec4<bool>(var_2.x, var_2.x, var_0.a, var_2.x)), !var_0.a)), all(select(!vec4<bool>(false, false, false, var_2.x), select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a), false), true)));
    return Struct_1(arg_0, max(u_input.e & u_input.e, ~(~(-u_input.b.x))), true, abs(-select(_wgslsmith_add_vec2_i32(u_input.b.yz, u_input.c), u_input.b.xx, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_2.x, 17718u))).x, _wgslsmith_f_op_f32(abs(1000f)), 101f))));
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_sub_u32(~(~(u_input.d | 33917u)), 8937u));
    let var_1 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c)), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.c), !vec2<bool>(var_0.c, var_0.c)), var_0.c), !vec2<bool>(true, var_0.c && true), !select(select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c)), vec2<bool>(true, true), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true), var_0.c))), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.c, false), select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, false)), all(vec2<bool>(true, true))), any(select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(true, false, var_0.c, var_0.c), vec4<bool>(false, var_0.c, var_0.c, true)))), vec2<bool>(true, !var_0.c), vec2<bool>(select(false, true, true), any(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)))), any(!select(select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(true, true, false), var_0.c), !vec3<bool>(false, var_0.c, false), vec3<bool>(true, true, var_0.c))));
    var var_2 = vec3<u32>(select(((0u >> (var_0.a % 32u)) & var_0.a) ^ 38883u, 8898u, true), var_0.a, _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.a, _wgslsmith_mod_u32(4294967295u, u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.a, var_0.a), 72479u, _wgslsmith_clamp_u32(u_input.d, 1u, u_input.d)), vec3<u32>(4294967295u, u_input.d, 4294967295u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(51426u, u_input.a, 50018u)) % vec3<u32>(32u)))));
    let var_3 = Struct_2(false, var_2.x);
    var var_4 = -1000f;
    return select(false, var_3.a, all(vec3<bool>(false, true, u_input.c.x <= u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, -64150i, any(vec3<bool>(func_1(), false, true)) || all(vec2<bool>(true, true)), u_input.b.xx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_f32(1111f * -1060f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1854f) - -947f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2109f))) + -467f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-657f, 666f)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1178f))), var_0.e.x, _wgslsmith_div_f32(-1406f, _wgslsmith_f_op_f32(-var_0.e.x)), var_0.e.x))), countOneBits(select(vec3<u32>(~31062u, 44350u, abs(u_input.a)), ~vec3<u32>(var_0.a, 76324u, var_0.a) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, var_0.a), vec3<u32>(19133u, 38625u, 0u)) % vec3<u32>(32u)), select(var_0.c, true, any(vec3<bool>(var_0.c, var_0.c, true))))));
}

