struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1659f, 1000f, 207f);

var<private> global1: array<f32, 1> = array<f32, 1>(805f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = arg_1;
    var var_1 = -1199f;
    var var_2 = var_0;
    var_2 = Struct_1(vec3<bool>(true, true, true), var_2.b, ~_wgslsmith_mod_u32(var_2.c | 0u, var_0.c));
    var var_3 = ~u_input.a.x;
    return -1796f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = ((_wgslsmith_mod_u32(u_input.d.x, ~0u) >> (select(1u, 4294967295u, true) % 32u)) <= _wgslsmith_div_u32(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_1.x), arg_1.zx)), ~77986u)) && any(vec4<bool>(false, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(true, Struct_1(arg_0.a, arg_0.b, arg_1.x), firstTrailingBit(arg_0.c))))))), 264f));
    var_0 = false;
    var var_2 = arg_0;
    let var_3 = arg_0;
    return arg_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = arg_0;
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true)), false, u_input.c >= u_input.e), func_1(Struct_1(vec3<bool>(true, true, true), vec4<f32>(515f, global1[_wgslsmith_index_u32(29674u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], 995f), ~u_input.d.x), ~(~vec4<u32>(1u, u_input.a.x, u_input.d.x, 64765u))), vec3<bool>(true, -u_input.c > u_input.e, 1i <= u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 1u)]) + 211f), _wgslsmith_div_f32(_wgslsmith_div_f32(-786f, -545f), _wgslsmith_f_op_f32(select(global0.x, global0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global1[_wgslsmith_index_u32(u_input.b, 1u)])))), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d)));
    let var_1 = Struct_1(func_1(Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + 895f), _wgslsmith_f_op_f32(-var_0.b.x), 1f, global1[_wgslsmith_index_u32(func_3(Struct_1(var_0.a, var_0.b, u_input.a.x), u_input.b), 1u)]), 37528u), reverseBits(vec4<u32>(u_input.b ^ 4294967295u, var_0.c, u_input.b, 1u))), _wgslsmith_f_op_vec4_f32(-var_0.b), ~(~max(4294967295u, 1u)));
    var var_2 = _wgslsmith_f_op_f32(step(global0.x, -250f));
    var var_3 = Struct_1(!select(vec3<bool>(true, all(vec3<bool>(false, var_1.a.x, true)), true), !vec3<bool>(var_1.a.x, true, true), !var_1.a), var_1.b, max(var_0.c, 113482u) ^ ~var_1.c);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_4.b.zw, vec2<f32>(var_1.b.x, global0.x))))), var_4.b.wy), _wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(~var_4.c, firstTrailingBit(var_1.c))), _wgslsmith_sub_u32(697u << (1u % 32u), firstTrailingBit(~1u))));
}

