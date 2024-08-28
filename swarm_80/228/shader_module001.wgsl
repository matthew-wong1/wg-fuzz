struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1132f, -1287f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_1(vec2<f32>(-1521f, global0.x), 1i);
    var var_1 = u_input.a.xxx;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1418f)))) * -2012f);
    let var_3 = -1055f;
    let var_4 = _wgslsmith_mod_i32(21937i, arg_0.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f + 1941f) * var_0.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.a.x, var_2), var_2))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = false;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, -3829i), u_input.b, vec3<u32>(1u, 3163u, 0u))), var_0.a.x)), 0i), _wgslsmith_sub_vec3_u32(min(abs(~vec3<u32>(80768u, u_input.b, u_input.b)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(84665u, u_input.b, 3020u)), _wgslsmith_mod_vec3_u32(vec3<u32>(12338u, 1u, 49139u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~select(vec3<u32>(u_input.b, u_input.b, 22046u), vec3<u32>(0u, 55696u, u_input.b), vec3<bool>(false, var_1, var_1)) << (~vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -2116f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, -781f) * var_0.a)), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_2.c))))), 1i);
}

fn func_1() -> vec3<f32> {
    let var_0 = vec3<bool>(true, false, false);
    global0 = vec2<f32>(-795f, _wgslsmith_f_op_f32(f32(-1f) * -646f));
    var var_1 = Struct_2(func_2(Struct_1(vec2<f32>(global0.x, global0.x), -2147483647i)), ~vec3<u32>(u_input.b, u_input.b, countOneBits(u_input.b) << (~u_input.b % 32u)), _wgslsmith_f_op_f32(step(1405f, -797f)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -185f);
    var var_3 = var_1.a;
    return vec3<f32>(421f, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(934f, -581f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1329f + 559f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-195f, var_1.a.a.x, var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(-1f)), 579f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1228f)), countOneBits(vec3<u32>(4294967295u, _wgslsmith_sub_u32(6162u, 1u) >> (1u % 32u), max(40037u, u_input.b) << (10177u % 32u))));
}

