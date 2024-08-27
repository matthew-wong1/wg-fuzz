struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> bool {
    global0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)) + vec3<f32>(_wgslsmith_div_f32(627f, global0.b.x), _wgslsmith_f_op_f32(abs(global0.b.x)), -706f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), global0.b.x, _wgslsmith_div_f32(-1000f, -198f)))), !vec3<bool>(1954f <= global0.b.x, all(vec2<bool>(true, false)), true))));
    var var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    var_0 = 1889f;
    var var_1 = select(~countOneBits(min(arg_2.x, global0.a ^ 10227i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 12212i, u_input.c, u_input.b), _wgslsmith_sub_vec4_i32(arg_2, abs(vec4<i32>(35135i, u_input.b, 27899i, 53695i)))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(false, false, true))));
    var var_2 = u_input.a.x >> (firstLeadingBit(u_input.a.x) % 32u);
    return (_wgslsmith_clamp_i32(abs(global0.a), -21393i, arg_0) < -2147483647i) | any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    global0 = Struct_1(global0.a, global0.b);
    let var_0 = Struct_3(vec2<bool>(all(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), false), -769f);
    let var_1 = vec4<u32>(u_input.a.x, u_input.a.x, min(u_input.a.x, max(u_input.a.x, u_input.a.x)), ~abs(u_input.a.x));
    var var_2 = Struct_1(~(-(~(i32(-1i) * -3552i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)));
    let var_3 = !vec4<bool>(true, func_3(var_2.a, var_2.b, ~vec4<i32>(6898i, 8615i, u_input.d.x, 1i) ^ -vec4<i32>(global0.a, u_input.c, -15062i, global0.a)), func_3(-10041i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, global0.b.x, -1000f), vec3<f32>(var_2.b.x, -1225f, global0.b.x), vec3<bool>(false, false, true))))), vec4<i32>(arg_0, 0i, u_input.b, 61142i | u_input.b)), !(all(vec2<bool>(true, false)) != var_0.a.x));
    return var_1.yyz;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec3_u32(abs(func_2(u_input.b)), min(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(arg_1.x, 1u, 0u))) <= _wgslsmith_mult_u32(~arg_1.x | _wgslsmith_div_u32(arg_1.x, arg_1.x), 4294967295u), func_3((global0.a ^ -1i) | (-1i << (arg_1.x % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, arg_0, 1557f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, arg_0) + vec3<f32>(global0.b.x, arg_0, -808f))), abs(vec4<i32>(u_input.c, -2147483647i, -27584i, -57897i))) | (_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-16925i, 0i), u_input.d), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13522i, 2147483647i), vec2<i32>(-1i, u_input.b))) >= -u_input.b), true);
    global0 = Struct_1(min(-1i, -(-1i | (u_input.b << (5487u % 32u)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -993f, -1382f) * vec3<f32>(global0.b.x, global0.b.x, arg_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-global0.b), vec3<bool>(var_0.x, true, true))))))));
    var var_1 = Struct_3(!var_0.zz, global0.b.x);
    var_1 = Struct_3(!vec2<bool>(false, !all(vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(346f - 451f)), -1000f)) + -1051f));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(630f)) - _wgslsmith_f_op_f32(exp2(global0.b.x))), -1918f)))));
    return Struct_1(-2147483647i, vec3<f32>(-1651f, _wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-707f, firstTrailingBit(u_input.a));
    let var_0 = 4294967295u;
    global0 = func_1(global0.b.x, ~max(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, var_0), vec2<u32>(u_input.a.x, var_0)), u_input.a));
    let var_1 = select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>((var_0 < 1u) & any(vec4<bool>(true, true, true, true)), false, !all(vec4<bool>(false, false, true, false))), !vec3<bool>(any(vec4<bool>(false, false, false, true)) | true, all(vec2<bool>(true, true)), true));
    global0 = Struct_1(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-5891i, global0.a, global0.a), vec3<i32>(u_input.d.x, 2147483647i, global0.a)), firstLeadingBit(0i)), _wgslsmith_f_op_vec3_f32(floor(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)), vec2<u32>(var_0, 1u) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))).b)));
    let var_2 = u_input.d;
    global0 = Struct_1(28079i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x) - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, true))), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -875f), _wgslsmith_f_op_f32(global0.b.x + 153f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

