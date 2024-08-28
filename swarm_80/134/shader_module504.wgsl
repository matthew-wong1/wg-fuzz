struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_add_u32(u_input.b, arg_1.a) << (~arg_1.a % 32u));
    let var_1 = vec3<u32>(~(max(0u, 1u) | max(12238u, _wgslsmith_div_u32(u_input.b, 1u))), ~var_0.a, arg_1.a);
    var var_2 = Struct_3(arg_1, _wgslsmith_div_f32(-706f, _wgslsmith_div_f32(-191f, 847f)), max(var_1.x, ~1u));
    global0 = array<Struct_4, 15>();
    var var_3 = select(u_input.a, 0i, !any(arg_0.a));
    return _wgslsmith_clamp_vec2_u32(countOneBits(~(~var_1.zx)) << (vec2<u32>(select(~1u, 13351u, true), _wgslsmith_dot_vec2_u32(countOneBits(var_1.zy), ~var_1.xy)) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(countOneBits(var_1.yz), var_1.xx)) | vec2<u32>(arg_1.a, 41883u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(~var_1.zx), var_1.zx), abs(var_1.yx)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(!vec3<bool>(!arg_0, true, true));
    var var_1 = arg_2.b;
    var_0 = Struct_2(!(!var_0.a));
    let var_2 = firstTrailingBit(select(~func_3(Struct_2(var_0.a), arg_2.a), arg_1.yz, all(!select(vec4<bool>(false, arg_0, false, false), vec4<bool>(true, false, var_0.a.x, arg_0), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)))));
    var_0 = Struct_2(vec3<bool>(true, true, true));
    return Struct_3(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-874f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.b + arg_2.b))))), arg_2.a.a ^ abs(func_3(Struct_2(vec3<bool>(var_0.a.x, true, arg_0)), Struct_1(8748u)).x));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = any(vec2<bool>(true, true)) | all(vec2<bool>(select(true, any(vec2<bool>(true, false)), false), _wgslsmith_dot_vec3_u32(vec3<u32>(12976u, 61920u, 0u), vec3<u32>(0u, arg_0.a.a, arg_0.a.a)) >= ~arg_0.a.a));
    let var_1 = Struct_2(vec3<bool>(var_0, false, false));
    global0 = array<Struct_4, 15>();
    let var_2 = !(!var_1.a);
    var var_3 = _wgslsmith_add_vec4_u32(~(vec4<u32>(118500u, 14653u, arg_0.a.a, ~18690u) << (~abs(vec4<u32>(arg_0.a.a, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))), min(abs(firstTrailingBit(vec4<u32>(u_input.b, 72374u, 4294967295u, 4294967295u))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a, 23246u, arg_0.c, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(12336u, arg_0.c, u_input.b, arg_0.c), vec4<u32>(0u, arg_0.c, 29705u, arg_0.a.a))))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_4 {
    var var_0 = vec4<f32>(arg_0.b, _wgslsmith_div_f32(arg_0.b, arg_0.b), -2339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(217f)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b, 572f), _wgslsmith_div_f32(1832f, -2536f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1694f, _wgslsmith_f_op_f32(arg_0.b + arg_0.b)))))));
    global0 = array<Struct_4, 15>();
    let var_1 = arg_0.a;
    let var_2 = Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true));
    let var_3 = Struct_1(4294967295u);
    return global0[_wgslsmith_index_u32(u_input.b ^ func_4(Struct_3(Struct_1(17682u), arg_0.b, _wgslsmith_div_u32(var_1.a, 0u))).a.a, 15u)];
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = func_5(func_4(func_2(true, arg_0.d, Struct_3(arg_0.b, arg_0.c, select(u_input.b, 4294967295u, false)))), 39701u);
    var var_1 = arg_0.b.a;
    global0 = array<Struct_4, 15>();
    return StorageBuffer(~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~u_input.b), arg_0.d.x, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c, -529f, -1189f, _wgslsmith_f_op_f32(step(arg_0.c, 396f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1372f, -569f, var_0.c, var_0.c))))))), vec2<u32>(8674u, func_5(func_4(Struct_3(Struct_1(u_input.b), var_0.c, 1u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(7665u, 1u, 1u, 3626u)), vec4<u32>(42839u, 31832u, var_0.b.a, arg_0.d.x))).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(u_input.b, 15u)]);
}

