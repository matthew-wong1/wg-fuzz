struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec3<u32>, 18>();
    let var_0 = vec4<bool>(select(false, !select(false, true, u_input.b > 0u), true), false, any(vec4<bool>(any(vec2<bool>(true, true)), select(false, true, true), !all(vec2<bool>(true, false)), false)), (3016u ^ _wgslsmith_div_u32(u_input.b, 4294967295u)) <= ~(~min(33337u, u_input.b)));
    global0 = array<vec3<u32>, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(850f, _wgslsmith_f_op_f32(-1233f * -624f), -1718f)))))));
    var var_2 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(0i, u_input.a, 16086i), vec3<i32>(u_input.a, 20152i, -1i)), reverseBits(vec3<i32>(-2147483647i, u_input.a, -8896i) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), min(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), 53173i)));
    return select(~reverseBits(vec2<u32>(min(u_input.b, u_input.b), ~0u)), vec2<u32>(u_input.b, ~abs(_wgslsmith_div_u32(u_input.b, 4294967295u))), var_0.xz);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    let var_0 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(82314u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)), func_3())));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -345f) - _wgslsmith_div_f32(1882f, -1433f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1086f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, arg_0, 802f) - vec3<f32>(1156f, arg_0, -1591f))))));
    let var_2 = 10092i;
    return Struct_1(countOneBits(u_input.a) > 0i, var_0, ~var_0);
}

fn func_1() -> u32 {
    global0 = array<vec3<u32>, 18>();
    let var_0 = func_2(_wgslsmith_f_op_f32(191f - -1029f));
    global0 = array<vec3<u32>, 18>();
    let var_1 = !vec4<bool>(true, false, var_0.a, var_0.a);
    return (u_input.b << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(35255u, 16582u), abs(vec2<u32>(53548u, u_input.b))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 7616u), vec2<u32>(var_0.b, u_input.b)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(71868u, 102798u), vec2<u32>(var_0.c, 0u)) % vec2<u32>(32u))) % 32u)) >> (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(54652u, 0u, u_input.b, _wgslsmith_add_u32(u_input.b, firstLeadingBit(func_1()))) & abs(max(vec4<u32>(u_input.b, ~u_input.b, u_input.b << (1u % 32u), 8999u), vec4<u32>(u_input.b, u_input.b ^ u_input.b, 5771u, _wgslsmith_add_u32(1u, 16222u))));
    var var_1 = vec3<bool>(true, all(vec2<bool>(true, true)), false);
    var var_2 = func_2(592f);
    var_1 = !select(!vec3<bool>(!var_2.a, var_2.a, var_1.x), !vec3<bool>(all(vec3<bool>(false, true, true)), true, !var_1.x), !(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, true, false), false)));
    var_2 = Struct_1(var_1.x && all(vec3<bool>(!var_1.x, true, false)), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26532u, 25132u) << (var_0.ww % vec2<u32>(32u)), var_0.xw), abs(~18245u)), ~(~u_input.b)), _wgslsmith_dot_vec4_u32(select(select(var_0 | var_0, var_0, !vec4<bool>(var_2.a, var_1.x, var_2.a, false)), ~vec4<u32>(1u, var_0.x, 3775u, var_0.x), !select(vec4<bool>(var_1.x, var_1.x, var_2.a, var_2.a), vec4<bool>(var_1.x, true, true, var_1.x), var_2.a)), var_0));
    var_1 = select(vec3<bool>(false, var_1.x, 33990i >= -u_input.a), !vec3<bool>(!var_1.x, var_1.x, false), !vec3<bool>(true, var_2.a, func_2(_wgslsmith_f_op_f32(sign(709f))).a));
    var var_3 = countOneBits(min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), ~vec3<i32>(-23621i, -1i, u_input.a)), -(~vec3<i32>(u_input.a, u_input.a, u_input.a)))) ^ vec3<i32>(~(-(~u_input.a)), -2147483647i, -select(_wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i), -u_input.a, select(false, false, true)));
    let var_4 = var_2.a;
    let var_5 = vec2<bool>((var_1.x == !(!var_1.x)) & !(!all(var_1.zy)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<u32>(func_3().x, max(0u, 1u)), 22876i, var_3.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2488f, -1269f), -481f, _wgslsmith_f_op_f32(max(443f, 1063f)), _wgslsmith_f_op_f32(469f * -254f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, -100f, 323f, -780f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, -222f, -356f, 428f))))));
}

