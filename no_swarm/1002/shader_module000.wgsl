struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1389f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_div_f32(817f, -747f))))), Struct_2(Struct_1(u_input.a), true, 0u, Struct_1(u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1377f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) - vec4<f32>(var_0.a, 854f, var_0.a, 500f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -147f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), -1639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -883f)), -211f))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(780f))), -988f, !(var_0.b.b && var_0.b.b))), _wgslsmith_f_op_f32(select(-164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744f + 122f) - _wgslsmith_div_f32(var_0.a, var_0.a)), _wgslsmith_mod_u32(0u, var_0.b.c) < (1u >> (var_0.b.c % 32u)))), var_0.a, 187f));
    var var_2 = u_input.c <= u_input.c;
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(718f, _wgslsmith_f_op_f32(select(327f, 737f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1560f) * _wgslsmith_f_op_f32(var_0.a - var_0.a)))), var_0.a) + vec4<f32>(_wgslsmith_f_op_f32(913f + var_0.a), -1658f, 776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(157f)) + var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, var_0.a, -493f, var_0.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-473f, -888f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 940f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(830f, 933f, -277f, -744f) - vec4<f32>(-1000f, -1053f, var_0.a, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a, var_0.a, -237f) * vec4<f32>(var_0.a, var_0.a, -922f, var_1.x))))));
    return -var_0.b.d.a == u_input.a;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = -1420f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1975f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f - var_0) + var_0));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -520f), Struct_2(arg_1.a, false, _wgslsmith_div_u32((1u >> (arg_1.c % 32u)) | _wgslsmith_mod_u32(arg_1.c, u_input.b.x), ~max(51530u, u_input.b.x)), Struct_1(arg_0 ^ -2147483647i)));
    var_1 = 864f;
    var var_3 = true;
    return select(!vec2<bool>(func_2(arg_2.yy, false) && !arg_2.x, !arg_1.b), vec2<bool>(arg_2.x, all(vec4<bool>(select(false, false, false), var_2.b.b, var_2.b.b, u_input.a == u_input.a))), !any(vec4<bool>(false, arg_1.b, var_2.b.b || true, all(arg_2))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec3<bool>(!(func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true) || true), func_2(select(func_3(1i, Struct_2(arg_0, false, u_input.c, arg_0), vec3<bool>(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)) || true);
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(295f)), _wgslsmith_f_op_f32(f32(-1f) * -427f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f - -1320f) + _wgslsmith_f_op_f32(sign(-203f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(385f)))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-286f, _wgslsmith_div_f32(-290f, 1673f))))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 0i, 869i, -2147483647i), vec4<i32>(arg_0.a, u_input.a, 2147483647i, u_input.a))), all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false))), (12472u >> (1u % 32u)) | _wgslsmith_mod_u32(u_input.b.x, 3015u), Struct_1(~arg_0.a))), _wgslsmith_f_op_f32(abs(522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-630f))));
    let var_2 = abs(firstLeadingBit(-1i | -u_input.a));
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = func_1(arg_1);
    let var_1 = func_1(Struct_1(arg_0.b.d.a)).b.d;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.a - -362f), _wgslsmith_f_op_f32(629f - var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -319f) - vec2<f32>(518f, 1055f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1793f, -620f))), !arg_0.b.b)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.a, var_0.a, var_0.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -293f) + _wgslsmith_f_op_f32(f32(-1f) * -1463f)), var_0.b.b)))));
    let var_3 = arg_0.b;
    var var_4 = var_2.b.b.d;
    return ~6338u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_4(func_1(Struct_1(u_input.a)), Struct_1(45237i)) == min(firstTrailingBit(~u_input.b.x), firstLeadingBit(u_input.c)));
    let var_1 = vec4<i32>(~u_input.a, ~_wgslsmith_sub_i32(u_input.a, i32(-1i) * -20789i), 0i, func_1(Struct_1(u_input.a)).b.d.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-938f, -2002f)))), Struct_2(Struct_1(u_input.a), true, firstTrailingBit(func_1(func_1(Struct_1(1i)).b.a).b.c), func_1(func_1(Struct_1(-8256i)).b.a).b.d));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(0u, u_input.b.x, countOneBits(1u)), var_1.wwz, -_wgslsmith_div_vec3_i32(~(-var_1.zww), -vec3<i32>(var_2.b.d.a, -13986i, u_input.a)));
}

