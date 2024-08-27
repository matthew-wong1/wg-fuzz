struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-211f, -608f, 1375f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -387f, _wgslsmith_f_op_f32(trunc(-292f))))), vec3<f32>(-1168f, global0.x, _wgslsmith_f_op_f32(-global0.x))));
    let var_0 = arg_1;
    let var_1 = Struct_2(global0.yx, Struct_1(arg_1.a, arg_1.b), global0.zy, 218f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(783f, var_1.c.x, 1756f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, 320f, -1323f))))));
    let var_2 = arg_0;
    return 832f;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = firstLeadingBit(1u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(global0.zx - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(366f, arg_0), vec2<f32>(global0.x, 499f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xz - vec2<f32>(-1000f, 1004f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 643f), vec2<f32>(-1773f, 693f), false))))), Struct_1(false, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, arg_0)) * vec2<f32>(global0.x, 702f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -112f))), _wgslsmith_f_op_f32(-576f * global0.x));
    let var_2 = vec3<u32>(~u_input.e.x, u_input.b, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0, 0u, 1u), vec3<u32>(0u, 0u, 4294967295u)), u_input.e.wwz));
    let var_3 = ~(~(~firstTrailingBit(67254u)));
    global0 = vec3<f32>(-1845f, _wgslsmith_f_op_f32(func_3(Struct_1(false, true), var_1.b)), _wgslsmith_f_op_f32(trunc(arg_0)));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, var_2.x >> (var_0 % 32u), 9673u, _wgslsmith_div_u32(0u, var_0)) & _wgslsmith_div_vec4_u32(vec4<u32>(~15586u, 1u, ~u_input.c, var_0), reverseBits(~vec4<u32>(var_0, 44082u, 0u, 19582u))), min(u_input.e, ~vec4<u32>(2554u, u_input.c, var_2.x, var_0) << (~u_input.e % vec4<u32>(32u))));
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 584f, -540f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, global0.x, 621f))), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 726f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 1840f, -1076f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-945f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.x))))), 1518f));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2090f - _wgslsmith_f_op_f32(round(global0.x)))));
    var_0 = _wgslsmith_f_op_f32(global0.x - -1550f);
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.d, u_input.d)) >> (u_input.e.yy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -181i), ~vec2<i32>(-42251i, 1i), vec2<i32>(u_input.d, 1i) >> (vec2<u32>(u_input.e.x, 20279u) % vec2<u32>(32u)))), -select(vec2<i32>(u_input.d, 1i), max(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.d, u_input.d)), vec2<bool>(false, false))), (~vec2<i32>(u_input.d, u_input.d) ^ _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, u_input.d)), -vec2<i32>(1i, u_input.d))) ^ ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.d, 2147483647i))));
    var var_2 = func_2(global0.x) == u_input.e.x;
    return select(!vec3<bool>(true, _wgslsmith_f_op_f32(min(global0.x, 1000f)) >= _wgslsmith_f_op_f32(trunc(1000f)), true), select(vec3<bool>(true, true, true), vec3<bool>(select(global0.x > -240f, true, true), true, u_input.c < 15328u), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), -233f == _wgslsmith_f_op_f32(trunc(-299f)));
}

fn func_4(arg_0: vec3<bool>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1010f), -1036f, _wgslsmith_f_op_f32(global0.x * -1722f)));
    var var_0 = false;
    let var_1 = Struct_1(true, arg_0.x);
    let var_2 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(abs(u_input.c), ~u_input.c, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(4294967295u, 28734u, u_input.b, 63282u)), _wgslsmith_mod_u32(0u, u_input.a))), min(vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), 0u, ~u_input.a) & u_input.e, u_input.e));
    var_0 = false;
    return !arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = u_input.d;
    let var_2 = Struct_2(vec2<f32>(132f, global0.x), Struct_1(select(all(vec4<bool>(false, true, true, false)), (global0.x >= global0.x) && true, false), func_4(func_1())), _wgslsmith_f_op_vec2_f32(-global0.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_2.d))) * global0.x), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(~1i, ~(-27082i)), ~u_input.d, abs(-u_input.d), 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1320f, var_2.c.x, -631f))));
}

