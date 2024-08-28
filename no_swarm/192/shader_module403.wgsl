struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = Struct_3(select(-_wgslsmith_div_vec2_i32(abs(global1.b.c.a.xz), global1.a), vec2<i32>(global1.a.x, -global1.b.b.a.x), vec2<bool>(true, true)), Struct_2(~countOneBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec4<u32>(u_input.a, 1u, u_input.a, 42988u))), Struct_1(-_wgslsmith_clamp_vec3_i32(global1.b.c.a, global1.b.b.a, global1.b.c.a)), Struct_1(global1.b.b.a), global1.a.x));
    let var_0 = Struct_2(4294967295u, Struct_1(-global1.b.b.a), Struct_1(abs(min(reverseBits(vec3<i32>(-49605i, -2147483647i, -17822i)), global1.b.b.a))), ~(~1i));
    let var_1 = Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, global1.b.a), u_input.a) >> (var_0.a % 32u), var_0.b, Struct_1(reverseBits(~(-var_0.c.a))), abs(_wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(var_0.c.a.x, var_0.b.a.x)), -1i)));
    var var_2 = 1000f;
    var var_3 = 1f;
    return var_1.b.a.x;
}

fn func_2() -> Struct_2 {
    return Struct_2(~global1.b.a, global1.b.c, Struct_1(vec3<i32>(global1.b.b.a.x, -(~(-89460i)), min(-1i, global1.a.x) ^ 27015i)), func_3(15806i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1093f - 1f), _wgslsmith_f_op_f32(1000f - 878f), -1129f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-887f - 1467f) - -737f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-229f))))));
    return Struct_3(arg_0.b.a.xz, global1.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: f32) -> vec4<f32> {
    let var_0 = global1.b;
    global1 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_3, -1036f) - vec3<f32>(361f, arg_3, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 801f, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -851f, 1466f) + vec3<f32>(-1000f, 528f, arg_3)))))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, u_input.a << (global1.b.a % 32u), ~arg_0.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 62965u, ~60760u, arg_0.x), vec4<u32>(abs(arg_0.x), ~54391u, u_input.a, _wgslsmith_sub_u32(var_0.a, u_input.a)))), select(select(!(!vec2<bool>(false, arg_2)), vec2<bool>(select(false, true, true), !arg_2), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), vec2<bool>(true, arg_2)), !select(select(vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), false), !vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, true))));
    let var_1 = firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_mod_u32(global1.b.a, 4294967295u), _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(~global1.b.a, _wgslsmith_add_u32(var_0.a, u_input.a)))));
    var var_2 = global1.b.a;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, -386f, 194f) + vec4<f32>(686f, arg_3, arg_1, arg_1)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f * _wgslsmith_f_op_f32(max(-2313f, _wgslsmith_f_op_f32(abs(arg_0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -230f), true));
    var var_2 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), ~0u <= ~arg_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_0.x) - _wgslsmith_f_op_f32(-arg_2)) != _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(0u, 27547u, 21608u) >> (vec3<u32>(u_input.a, u_input.a, arg_1.b.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(-1000f, arg_2)), any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(abs(309f)))).x));
    global1 = arg_1;
    var var_3 = func_4(func_2(), vec3<f32>(arg_2, _wgslsmith_f_op_f32(trunc(1122f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(2004f, _wgslsmith_f_op_f32(752f + 455f)))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.b.a, ~arg_1.b.a), 18u)], select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec3<bool>(true, true, true)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, true))).b;
    return func_4(Struct_2(func_2().a, arg_1.b.c, Struct_1(arg_1.b.c.a), _wgslsmith_sub_i32(~4173i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, -2147483647i) & var_3.c.a, arg_1.b.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.wwx)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(select(-785f, -372f, true)), _wgslsmith_f_op_f32(-arg_0.x)))), ~firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u >> (u_input.a % 32u), 18u)] << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 44474u, 30249u), global0[_wgslsmith_index_u32(0u, 18u)]) % vec4<u32>(32u))), vec2<bool>((true && select(true, false, true)) | !all(vec2<bool>(true, false)), all(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, false)), true, var_3.a <= global1.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-657f + -927f), 1097f, -197f, -211f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(global1.b.a, global1.b.a, global1.b.a), -774f, true, -293f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + _wgslsmith_f_op_f32(abs(-173f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f * 103f)), -1430f, _wgslsmith_f_op_f32(round(-1000f)))), Struct_3(_wgslsmith_clamp_vec2_i32(-global1.a, _wgslsmith_add_vec2_i32(vec2<i32>(global1.b.b.a.x, global1.b.b.a.x), max(global1.a, vec2<i32>(global1.b.c.a.x, 63204i))), vec2<i32>(-54141i, global1.a.x) | global1.a), global1.b), -150f);
    global0 = array<vec4<u32>, 18>();
    var var_0 = global1.b.b;
    var var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, -418f, -767f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-592f, -325f, -684f) - vec3<f32>(-583f, 716f, -683f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, -434f, -566f) - vec3<f32>(-411f, 227f, -1000f)))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(global1.b.a, global1.b.a, 66976u), 382f, true, _wgslsmith_div_f32(-1107f, 204f))).x, _wgslsmith_f_op_f32(floor(-240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-711f, 1000f)) - -1400f))));
}

