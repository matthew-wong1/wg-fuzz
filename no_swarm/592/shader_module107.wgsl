struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 12>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> bool {
    global2 = array<vec3<i32>, 12>();
    let var_0 = 0i;
    global2 = array<vec3<i32>, 12>();
    var var_1 = 1u;
    global0 = arg_3;
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    return Struct_1(firstTrailingBit(~0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(328f)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(-1230f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, -313f, global0.x)))))), false);
    var var_1 = arg_0;
    let var_2 = !(!(!vec2<bool>(any(vec3<bool>(false, true, var_0.b)), var_0.b)));
    let var_3 = func_2();
    var var_4 = Struct_1(u_input.a.x);
    return -11473i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 511f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1052f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -341f))))));
    global1 = !(!func_1(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 463f))), all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, 235f, -288f, global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2375f, -759f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 689f))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 992f)))));
    let var_0 = select(vec2<i32>(~(-(~1i)), func_3(func_2()) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), ~25417u, 1u) % 32u)), min(u_input.a.zz, _wgslsmith_mult_vec2_i32(-u_input.a.yz, vec2<i32>(-15069i, 1i))), vec2<bool>(true | all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, false, true))));
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 43828u, 0u, 1u), vec4<u32>(45671u, 0u, 0u, 1u), vec4<u32>(0u, 84611u, 80471u, 0u)), abs(abs(vec4<u32>(1u, 0u, 37935u, 0u)))), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(65116u, 0u), reverseBits(vec2<u32>(4294967295u, 27243u))), ~98063u, 4294967295u, abs(12717u)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-704f, -679f), vec2<f32>(710f, -1015f), false))))), vec2<f32>(-910f, _wgslsmith_f_op_f32(-1727f + -1296f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(-1777f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), 4294967295u < var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x)))), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))));
    var var_2 = select(!(!vec2<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false)))), select(!vec2<bool>(true, 4294967295u < var_1.x), select(vec2<bool>(all(vec3<bool>(true, false, false)), var_0.x > u_input.a.x), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec2<bool>(true, any(vec2<bool>(false, true)))), vec2<bool>(~(-u_input.a.x) > -4561i, true));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -123f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, global0.x))))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), 1000f, 173f, global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-760f, -218f, global0.x, -1116f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 143f)))), _wgslsmith_dot_vec4_u32(~var_1, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(56386u, var_1.x, var_1.x, 16314u)), firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, 54076u, 38571u))), ~vec4<u32>(var_1.x, 6355u, 0u, 35809u), _wgslsmith_mod_vec4_u32(var_1 << (var_1 % vec4<u32>(32u)), abs(var_1)))), _wgslsmith_div_vec2_i32(vec2<i32>(-(var_0.x ^ var_0.x), -2147483647i), var_0), _wgslsmith_mult_u32(select(firstLeadingBit(~0u), countOneBits(~8344u), var_2.x), _wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(22465u, var_1.x), var_1.wx & var_1.yx), var_1.x)));
}

