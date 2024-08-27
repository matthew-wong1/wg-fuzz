struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec3<bool>(true || (abs(-11433i) == firstTrailingBit(1i)), any(vec4<bool>(true, false, true, true)), true), _wgslsmith_f_op_f32(round(-995f)), select(~select(vec3<u32>(u_input.a, 1u, u_input.a) >> (vec3<u32>(72324u, u_input.a, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(1u, 86860u, 64178u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), ~vec3<u32>(abs(1u), 4294967295u, u_input.a), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, false))), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(max(550f, 385f)), Struct_1(select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), true), select(abs(vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, all(vec2<bool>(true, true)), true))));
    var var_1 = 0i ^ max(1i, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -30353i), vec2<i32>(1i, -1i))), ~_wgslsmith_mod_i32(1i, -6885i)));
    let var_2 = Struct_4(var_0);
    let var_3 = true;
    let var_4 = var_2.a.e.a.zz;
    return var_4.x;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = u_input.a >> (_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(4294967295u, u_input.a, 70781u), min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 0u)))), u_input.a) % 32u);
    let var_1 = u_input.a;
    let var_2 = vec2<f32>(610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + arg_0.x));
    let var_3 = select(vec4<bool>(1u < u_input.a, !(!func_3()), select(select(true, false, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1477f)) * -1000f) < _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-631f - var_2.x))), vec4<bool>(true, true, true == (func_3() || false), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), vec4<bool>(true, true, true, true));
    let var_4 = Struct_4(Struct_2(!vec3<bool>(all(vec2<bool>(var_3.x, var_3.x)), true, true), _wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1108f, 374f) + _wgslsmith_f_op_f32(select(421f, var_2.x, true)))), vec3<u32>(~95090u, abs(firstLeadingBit(var_1)), 27932u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x)), Struct_1(select(select(vec4<bool>(var_3.x, false, true, true), vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3, any(var_3.zww)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, var_1, var_1), abs(vec3<u32>(var_1, 60512u, u_input.a))))));
    return firstTrailingBit(-2147483647i);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(min(-49796i, -2147483647i), 1i), -func_2(vec2<f32>(-533f, 776f)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 7081i), vec2<i32>(1i, 1i)), -abs(34293i)), vec4<i32>(~(-1i), ~_wgslsmith_mult_i32(-61507i, 10040i), -13763i << (1u % 32u), _wgslsmith_add_i32(-1i, func_2(vec2<f32>(891f, -1703f))))), 1i >> (min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 6373u, 68850u), vec3<u32>(u_input.a, u_input.a, u_input.a)), min(vec3<u32>(u_input.a, 4294967295u, 27939u), vec3<u32>(104245u, 28920u, u_input.a))), min(u_input.a >> (0u % 32u), ~u_input.a)) % 32u));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~(u_input.a ^ 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(45714u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 75785u, u_input.a)))), ~1u, u_input.a, countOneBits(u_input.a | (u_input.a << (17575u % 32u)))), vec4<u32>(4294967295u, 5433u, u_input.a, reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 57339u, 4294967295u))))));
    let var_2 = select(true, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-179f)), _wgslsmith_f_op_f32(floor(-1046f))) != _wgslsmith_f_op_f32(sign(509f))) & false, !all(vec4<bool>(true, false, true, false)) || true);
    let var_3 = _wgslsmith_f_op_f32(trunc(-154f));
    let var_4 = Struct_4(Struct_2(select(!vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, any(vec2<bool>(var_2, var_2)), false), !vec3<bool>(var_2, true, false)), _wgslsmith_f_op_f32(trunc(var_3)), ~vec3<u32>(~11630u, u_input.a, 13730u), var_3, Struct_1(select(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, var_2, false, var_2)), vec4<bool>(false, false, var_2, var_2), select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, false, false, true))), ~vec3<u32>(var_1.x, u_input.a, u_input.a))));
    return -1801f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = ~(~u_input.a);
    var var_2 = countOneBits(-2147483647i);
    let var_3 = select(vec4<bool>(all(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), u_input.a < 1u)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), !(any(vec4<bool>(false, false, false, true)) | false), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), false))), !vec4<bool>(true, true, true, select(u_input.a < u_input.a, true, true)), !vec4<bool>(true, select(true, true, func_3()), true, true && all(vec4<bool>(false, true, true, true))));
    var_1 = 4294967295u;
    var_1 = 117031u;
    var_1 = 1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, _wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f) * _wgslsmith_f_op_f32(f32(-1f) * -378f)), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(-2388f, 976f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1071f, var_0)) - _wgslsmith_f_op_f32(-652f * 1000f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, -1330f)))))), 4294967295u, 828f, -(~reverseBits(0i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(43626u, u_input.a, 1u), ~vec3<u32>(1u, 59167u, 28917u)) % 32u)));
}

