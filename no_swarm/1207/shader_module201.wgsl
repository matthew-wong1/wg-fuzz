struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-1066f, 143f, -440f, -466f, -334f, -591f, 255f, -573f, -695f, -1144f, 1726f, 310f, -916f, 567f, -480f, 1018f, 1030f, -307f, -1050f, 2015f, -796f, 1229f, 530f, 1000f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = !(!vec4<bool>(any(vec2<bool>(false, false)) | var_0.b, false, !(!var_1.b), _wgslsmith_mod_i32(u_input.d, u_input.c.x) >= u_input.b.x));
    var var_3 = vec2<bool>(all(vec3<bool>(true, true, true)), var_1.b);
    var var_4 = ((_wgslsmith_dot_vec2_u32(vec2<u32>(45874u, 0u), vec2<u32>(0u, u_input.a.x)) ^ u_input.a.x) > _wgslsmith_div_u32(~u_input.a.x & ~u_input.a.x, 5418u)) & true;
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = max(u_input.a.x, 1u);
    var var_1 = Struct_1(true, arg_1.x);
    var var_2 = !select(vec2<bool>(true, true), !select(arg_1, !vec2<bool>(true, arg_1.x), arg_1), func_3(Struct_1(arg_1.x, arg_0.a), global0[_wgslsmith_index_u32(min(var_0 << (var_0 % 32u), 0u), 24u)]));
    var_1 = Struct_1(global0[_wgslsmith_index_u32(abs(~var_0) ^ var_0, 24u)] >= _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(21811u, 24u)], global0[_wgslsmith_index_u32(26844u, 24u)], !var_2.x)), all(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, arg_1.x), select(vec3<bool>(false, arg_0.b, var_2.x), vec3<bool>(var_1.a, arg_1.x, var_2.x), vec3<bool>(false, var_1.a, var_2.x)))) != true);
    var var_3 = u_input.c;
    return global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1555f, _wgslsmith_f_op_f32(func_2(Struct_1(false, true), vec2<bool>(false, true)))), 861f, true && all(vec2<bool>(false, true))))));
    var var_1 = ~0u;
    var_1 = ~_wgslsmith_sub_u32(~14733u, max(u_input.a.x ^ 15309u, ~u_input.a.x) & 57212u);
    var_1 = _wgslsmith_mult_u32(48783u, max(43352u, _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), ~u_input.a)));
    return Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(914f + var_0)) <= _wgslsmith_f_op_f32(f32(-1f) * -1557f)), !all(vec4<bool>(false, true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    global0 = array<f32, 24>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)] * -1425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 1f), 2261f))));
    var_0 = 2147483647i;
    let var_2 = var_1.x;
    return Struct_1(false, true & arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    var var_0 = func_4(Struct_1(false, !any(vec4<bool>(false, true, true, true))), func_1());
    var var_1 = -u_input.d;
    var var_2 = ~firstTrailingBit(_wgslsmith_mod_vec3_u32(~u_input.a.yzy >> (u_input.a.wxy % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 0u, 15474u)));
    global0 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(45921u, select(reverseBits(u_input.a.ww), vec2<u32>(31842u, 0u | var_2.x), !select(false, false, var_0.a)) & vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a.zyy, u_input.a.yxy)), ~(var_2.x | u_input.a.x)));
}

