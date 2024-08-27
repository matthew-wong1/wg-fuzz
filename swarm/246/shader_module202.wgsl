struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 3496u, 53613u, 36700u), vec4<u32>(78621u, 6242u, 0u, 1u), vec4<u32>(1063u, 0u, 4294967295u, 16664u), vec4<u32>(27364u, 0u, 11077u, 14345u), vec4<u32>(33337u, 79909u, 11333u, 0u), vec4<u32>(14947u, 1u, 20931u, 4294967295u), vec4<u32>(39630u, 1u, 32226u, 61972u), vec4<u32>(1u, 78789u, 47171u, 41553u), vec4<u32>(4294967295u, 51274u, 0u, 21042u), vec4<u32>(4294967295u, 1u, 0u, 58729u), vec4<u32>(0u, 4294967295u, 4756u, 54646u), vec4<u32>(1u, 130910u, 0u, 13936u), vec4<u32>(0u, 83027u, 40627u, 4294967295u), vec4<u32>(0u, 28421u, 4294967295u, 0u), vec4<u32>(4294967295u, 41773u, 0u, 4294967295u), vec4<u32>(4294967295u, 78736u, 0u, 42389u), vec4<u32>(4294967295u, 8231u, 2910u, 39198u), vec4<u32>(64304u, 54274u, 0u, 0u), vec4<u32>(1u, 0u, 4294967295u, 11012u), vec4<u32>(75466u, 4294967295u, 0u, 1u), vec4<u32>(1u, 7435u, 4294967295u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    global1 = array<vec4<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1f)), _wgslsmith_f_op_f32(abs(-1957f)))), select(true, -1i > select(-1i, 4536i, all(vec2<bool>(false, true))), !(any(vec4<bool>(true, true, true, true)) | true)));
    return 1i;
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<vec3<f32>, 27>();
    var var_0 = reverseBits(firstLeadingBit(arg_0 & ~23850i));
    var var_1 = Struct_1(835f, any(vec3<bool>(true, !all(vec4<bool>(false, false, true, false)), select(all(vec2<bool>(true, false)), true, true))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), var_1.b);
    return 1i ^ func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.a, 819f, var_1.b))))), select(u_input.a.zw, reverseBits(~vec2<u32>(1u, u_input.b.x)), select(!vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, true))), min(~vec3<i32>(1i, arg_0, arg_0), abs(min(vec3<i32>(30061i, arg_0, 1i), vec3<i32>(60189i, 1i, arg_0)))));
}

fn func_1() -> i32 {
    let var_0 = -firstTrailingBit(firstTrailingBit(vec2<i32>(1i, func_2(1i))));
    let var_1 = Struct_1(-1704f, all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
    global1 = array<vec4<u32>, 21>();
    let var_2 = var_0;
    var var_3 = u_input.b.x != u_input.b.x;
    return ~(var_2.x | 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-46257i, 1i) ^ vec2<i32>(-9017i, func_1()), vec2<i32>(-11122i, -1i)));
    global1 = array<vec4<u32>, 21>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.a.wxz, firstLeadingBit(~(~vec3<u32>(37457u, 109988u, u_input.a.x)))), reverseBits(~abs(max(vec2<u32>(u_input.a.x, 51368u), u_input.b))), vec3<i32>(reverseBits(var_0.x), func_2(32090i), -105i), var_0.x);
}

