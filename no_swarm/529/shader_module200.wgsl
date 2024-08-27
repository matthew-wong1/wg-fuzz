struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f + _wgslsmith_f_op_f32(f32(-1f) * -1094f)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global0 = -2652f;
    let var_0 = Struct_1(~min(select(firstTrailingBit(vec4<u32>(19926u, 1u, 35513u, 33234u)), firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, u_input.c.x)), all(vec4<bool>(true, false, true, false))), firstTrailingBit(min(vec4<u32>(13360u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(1u, 4153u, u_input.c.x, u_input.c.x)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(-239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f + -1051f))))), 0i, vec4<f32>(-527f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(704f)), _wgslsmith_f_op_f32(func_3(1920u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2281f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + 1f)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(u_input.c.x, 412u), var_0.a.x, u_input.a.x), max(vec4<u32>(var_0.a.x, 102742u, var_0.a.x, var_0.a.x), var_0.a) & var_0.a)));
    let var_2 = vec2<bool>(all(select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), false), vec4<bool>(false, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true))), true);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.c.x))));
    return 1046f;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_2(!arg_1.a, arg_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(889f + -1000f), _wgslsmith_f_op_f32(arg_1.c.x * arg_2.x), _wgslsmith_f_op_f32(select(-1000f, arg_2.x, arg_1.b)), arg_1.c.x)))), arg_1.d);
    var_0 = Struct_2(!(!vec2<bool>(any(vec3<bool>(false, arg_1.b, arg_1.a.x)), arg_1.a.x)), var_0.b, vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_1.c.x)), 584f, _wgslsmith_f_op_f32(func_2(max(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_3.x, -13036i, arg_3.x), vec4<i32>(38594i, -2147483647i, 2147483647i, arg_3.x)), countOneBits(vec4<i32>(u_input.b, u_input.b, 2147483647i, -17360i)))))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(41446u), ~arg_0, firstLeadingBit(var_0.d.a.x), arg_1.d.a.x), vec4<u32>(u_input.a.x, 1u, u_input.c.x, 43738u) & _wgslsmith_add_vec4_u32(var_0.d.a, vec4<u32>(5453u, var_0.d.a.x, 27335u, arg_1.d.a.x)))));
    var var_1 = countOneBits(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_u32(var_0.d.a, var_0.d.a))));
    var_1 = ~(~vec4<u32>(arg_0, _wgslsmith_mod_u32(u_input.c.x, arg_1.d.a.x) >> (~1u % 32u), _wgslsmith_mult_u32(~var_0.d.a.x, var_0.d.a.x >> (1633u % 32u)), 4294967295u));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~4294967295u)) - arg_1.c.x), countOneBits(-(u_input.b | arg_3.x)) & arg_3.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, arg_1.c.x, -928f, arg_2.x) + arg_1.c) + _wgslsmith_div_vec4_f32(var_0.c, var_0.c)) * _wgslsmith_f_op_vec4_f32(arg_1.c - _wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(596f, arg_1.c.x, var_0.c.x, 272f)))), vec4<f32>(-443f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-arg_1.c.x)))), 63317u);
    return any(!(!var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 578f;
    let var_0 = vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_1(1u, Struct_2(vec2<bool>(true, false), true, vec4<f32>(-157f, 1381f, 696f, 992f), Struct_1(vec4<u32>(20182u, 0u, u_input.a.x, u_input.c.x))), vec2<f32>(576f, -1000f), vec3<i32>(44419i, -1i, 1i))), vec2<bool>(true, true))), true && !(true | all(vec4<bool>(true, false, false, true))), true, any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(false, func_1(13435u, Struct_2(vec2<bool>(false, false), true, vec4<f32>(-1933f, 1590f, 238f, -270f), Struct_1(vec4<u32>(0u, u_input.a.x, u_input.c.x, u_input.a.x))), vec2<f32>(417f, 513f), vec3<i32>(u_input.b, u_input.b, -2147483647i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1045f - _wgslsmith_div_f32(-1498f, 465f)), _wgslsmith_f_op_f32(trunc(-2071f)), _wgslsmith_div_f32(1161f, -654f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-140f, 1000f), 1183f, _wgslsmith_f_op_f32(round(2170f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -317f, -883f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, 1465f, 402f) * vec3<f32>(-662f, -1724f, 897f)))))), reverseBits(firstTrailingBit(vec3<i32>(u_input.b, 0i, -2147483647i) << (~vec3<u32>(u_input.a.x, u_input.c.x, 0u) % vec3<u32>(32u)))), ~min(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.b) >> (~vec4<u32>(95504u, 2967u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), abs(countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)))));
}

