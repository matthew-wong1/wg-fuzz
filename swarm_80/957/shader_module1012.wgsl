struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = -1i;
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<u32, 8>();
    global1 = !(!vec2<bool>(global1.x, false));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-316f, -765f, _wgslsmith_f_op_f32(-304f - arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1008f)), _wgslsmith_f_op_f32(f32(-1f) * -1161f)) * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(2622f, 135f, arg_0), arg_0))))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)), var_0.a.x) - var_0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(598f * _wgslsmith_f_op_f32(ceil(1774f))))), var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_2 = u_input.c;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = func_2(arg_0.a.x, u_input.a);
    var var_1 = u_input.d;
    return all(arg_1.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec2<bool>(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1392f, 1768f, -1152f) * vec3<f32>(1482f, 1000f, -2007f)), -540f), select(vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, global1.x), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -356f), ~(1u >> (1u % 32u))), global1.x), !select(!vec2<bool>(global1.x, global1.x), vec2<bool>(!global1.x, any(vec2<bool>(global1.x, global1.x))), func_1(func_2(1050f, vec2<u32>(45773u, u_input.d)), vec3<bool>(global1.x, true, global1.x), _wgslsmith_div_f32(-235f, 195f), _wgslsmith_mod_u32(61211u, 1u))), all(!select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, true)), !vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x))));
    let var_0 = select(firstLeadingBit(~firstLeadingBit(-vec4<i32>(11161i, -2147483647i, -39068i, 1i))), vec4<i32>(~abs(-1i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 8u)], 8u)] % 32u)), 0i << (1u % 32u), reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -3186i), vec2<i32>(-6950i, 49109i))), 41249i), all(!(!vec4<bool>(false, global1.x, false, global1.x))) | all(select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))));
    let var_1 = !(!vec3<bool>(true, all(vec4<bool>(false, global1.x, global1.x, global1.x)), true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_f32(f32(-1f) * -545f));
    let var_3 = vec4<i32>(-_wgslsmith_mod_i32(_wgslsmith_add_i32(-30425i ^ var_0.x, 1i), var_0.x), ~var_0.x, ~var_0.x << (~4294967295u % 32u), _wgslsmith_add_i32(var_0.x, -(var_0.x | _wgslsmith_mod_i32(var_0.x, 0i))));
    global0 = array<u32, 8>();
    global1 = !var_1.xy;
    let var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f * -1265f) + var_2.a.x), vec2<u32>(abs(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1527f);
}

