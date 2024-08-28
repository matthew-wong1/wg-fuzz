struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(0i, -51553i, i32(-2147483648), -1i, 9911i, 61222i, 27448i, 11287i, -12653i, i32(-2147483648), 2147483647i, i32(-2147483648), -1i, 1i, -58517i, -8109i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    return Struct_2(u_input.a.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<i32, 17>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(arg_1.a), u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(~14391u, u_input.a.x), vec2<u32>(arg_1.a << (arg_1.a % 32u), 1u | arg_1.a))));
    var var_1 = arg_1;
    global0 = array<i32, 17>();
    let var_2 = arg_1;
    return func_1(vec4<bool>(arg_0.x, true, any(select(!vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(true, arg_0.x, true, true), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), arg_0.x), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.a, var_1.a, 123224u), _wgslsmith_sub_vec3_u32(vec3<u32>(19199u, 1u, 4294967295u) ^ vec3<u32>(1u, var_1.a, u_input.c), vec3<u32>(0u, u_input.c, 39709u) << (vec3<u32>(44951u, 0u, 41058u) % vec3<u32>(32u)))), vec3<u32>(var_1.a, var_1.a, reverseBits(~1u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<i32, 17>();
    var var_0 = -865f;
    let var_1 = -14338i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(940f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-301f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-708f, -852f))))))) - 1f);
    let var_2 = Struct_2(_wgslsmith_sub_u32(func_1(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), (vec3<u32>(u_input.a.x, 4290u, 4294967295u) | vec3<u32>(arg_0.a, u_input.c, arg_2.a)) << (~vec3<u32>(0u, 4294967295u, 6334u) % vec3<u32>(32u))).a, ~(~(~1u))));
    return select(select(vec2<bool>(true, ~arg_2.a > _wgslsmith_sub_u32(arg_0.a, 0u)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 17u)] > -1i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(10219u <= arg_0.a, true, true))), vec2<bool>(!select(select(true, true, false), false, any(vec3<bool>(true, true, false))), !all(vec3<bool>(true, false, false)) || true), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true)), !vec2<bool>(true, 47152u != arg_1.a), select(func_4(func_3(vec2<bool>(true, true), Struct_2(4294967295u)), 2147483647i, func_3(vec2<bool>(false, false), arg_1)), vec2<bool>(false, any(vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_1 = -1236f;
    let var_2 = reverseBits(arg_0.x);
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    return Struct_2(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~0u | _wgslsmith_add_u32(u_input.a.x, 0u));
    var var_1 = Struct_2(u_input.c);
    var_1 = Struct_2(~(~(13120u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, u_input.a.x, var_1.a, var_0.a), vec4<u32>(65710u, var_0.a, 4294967295u, var_0.a)))));
    var_1 = func_2(~u_input.b.yz, func_1(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.a, 0u, var_1.a) ^ vec3<u32>(var_0.a, u_input.a.x, 1u), ~vec3<u32>(20916u, 4294967295u, var_0.a), vec3<bool>(false, false, false)), select(~vec3<u32>(u_input.c, 23537u, 1u), vec3<u32>(112128u, 68125u, var_1.a), false), vec3<u32>(1u >> (var_0.a % 32u), 1u, ~var_1.a))));
    global0 = array<i32, 17>();
    let var_2 = Struct_2((func_2(~u_input.b.xz, func_3(vec2<bool>(false, true), Struct_2(var_1.a))).a | 4294967295u) ^ reverseBits(~49526u));
    let var_3 = Struct_2(64850u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, 1004f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-988f, 960f)))), !all(vec2<bool>(true, false))))), vec4<f32>(169f, 614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1645f, -1000f) + _wgslsmith_f_op_f32(586f - -596f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-762f, -605f, true))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-717f, 403f))) - _wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(step(-563f, -1028f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(907f, 2077f)), 792f))), vec2<f32>(-511f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f * 908f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(f32(-1f) * -549f), false)))));
}

