struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-966f, 1000f, -641f), vec3<f32>(1472f, -1278f, 405f), vec3<f32>(1138f, -1212f, -1338f), vec3<f32>(-157f, 743f, 104f), vec3<f32>(904f, -491f, -768f), vec3<f32>(144f, -403f, 734f));

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(390f, -2035f, 957f, 911f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec4<f32>, 1>();
    let var_0 = !arg_1.x;
    var var_1 = arg_1.x;
    var var_2 = ~(vec2<u32>(1u, ~62287u) >> ((~(vec2<u32>(u_input.b, 0u) ^ vec2<u32>(u_input.b, u_input.b)) << ((~vec2<u32>(u_input.b, u_input.b) << ((vec2<u32>(u_input.b, 58307u) ^ vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(926f + 885f), _wgslsmith_f_op_f32(f32(-1f) * -1203f)))), u_input.b, !vec3<bool>(var_0, all(arg_1), all(!vec2<bool>(arg_1.x, var_0))));
    return _wgslsmith_f_op_f32(max(1387f, _wgslsmith_f_op_f32(trunc(-2716f))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_2(1107f, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), -369f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -535f), _wgslsmith_f_op_f32(func_3(-23800i, vec2<bool>(true, true)))))), reverseBits(17951u), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), u_input.b != 39568u), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), any(vec2<bool>(true, false))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true))));
    let var_1 = var_0.b;
    var var_2 = Struct_2(var_0.b.a, var_0.b, !vec4<bool>(var_1.c.x, true, var_0.b.c.x, true));
    var var_3 = -14054i;
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-230f)), -103f), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(var_2.b.b, var_0.b.b) ^ 0u), u_input.b & 21860u), !(!vec3<bool>(var_2.b.c.x, true == var_0.b.c.x, false)));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)), var_1.a)), 1047f, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())) + vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(817f))));
    var var_1 = _wgslsmith_f_op_f32(func_3(select(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(25184i, 7806i), ~arg_0.x), firstTrailingBit(i32(-1i) * -4355i), true), select(!select(vec2<bool>(true, false), !vec2<bool>(arg_2.x, arg_3.x), u_input.b <= u_input.b), arg_1, select(vec2<bool>(!arg_3.x, false | arg_2.x), select(arg_2.xx, select(vec2<bool>(true, false), arg_1, true), !arg_1.x), vec2<bool>(!arg_2.x, true)))));
    let var_2 = !arg_3.zyy;
    return (~(~1u) | reverseBits(u_input.b)) | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>((-u_input.a.x ^ -2147483647i) & ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, u_input.a.x), 1i), 2147483647i), firstTrailingBit(~vec2<u32>(~u_input.b, func_1(u_input.a, vec2<bool>(true, false), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 1u), firstLeadingBit(u_input.b) << (reverseBits(1u) % 32u)));
}

