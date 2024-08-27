struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1i, -169f), Struct_1(i32(-2147483648), -279f), Struct_1(-157i, 1000f), Struct_1(i32(-2147483648), 1465f), Struct_1(-1i, -1177f));

var<private> global1: array<i32, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(exp2(arg_2.x)))))));
    global1 = array<i32, 18>();
    var var_1 = !all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))));
    var var_2 = arg_1.a;
    let var_3 = Struct_1(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -135f));
    return all(vec3<bool>(all(vec2<bool>(true, arg_1.b == var_3.b)), any(vec3<bool>(true, true, true)), !(var_0.b <= -362f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    let var_0 = false;
    var var_1 = !(!all(!(!vec3<bool>(false, true, var_0))));
    return countOneBits(~countOneBits(~countOneBits(vec3<u32>(u_input.a.x, 4294967295u, 24667u))));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    var var_0 = Struct_1(-(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, arg_0, -20952i), u_input.b.zzw, false), vec3<i32>(u_input.b.x, 1i, -57482i)) ^ arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(971f, 869f))));
    let var_1 = Struct_1(-46251i, 648f);
    var var_2 = vec3<u32>(~2892u, u_input.a.x, u_input.a.x);
    var var_3 = Struct_1(~arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
    let var_4 = u_input.b.x;
    return func_4(Struct_1(reverseBits(-43469i | (arg_0 ^ 2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(704f)), _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1375f), -1045f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1775f, -736f), vec2<f32>(var_1.b, var_0.b)) - vec2<f32>(381f, var_1.b)))), Struct_1(-33900i, var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(131f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b), var_3.b, func_3(vec3<i32>(-24323i, 12790i, var_1.a), var_1, vec3<f32>(var_0.b, var_1.b, -1160f), Struct_1(global1[_wgslsmith_index_u32(77367u, 18u)], var_1.b))))) + -1200f));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(max(u_input.b, -u_input.b), reverseBits(-vec4<i32>(54639i, -44379i, u_input.b.x, global1[_wgslsmith_index_u32(1u, 18u)]))), -184f);
    global0 = array<Struct_1, 5>();
    let var_1 = countOneBits(firstTrailingBit(countOneBits(select(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(17867u, 11303u, u_input.a.x), true)) | ~vec3<u32>(4294967295u, u_input.a.x, 4294967295u)));
    var var_2 = !all(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), ~(-1i) >= _wgslsmith_sub_i32(u_input.b.x, global1[_wgslsmith_index_u32(36184u, 18u)]), true, false));
    var var_3 = _wgslsmith_dot_vec3_u32(func_2((0i << (u_input.a.x % 32u)) << (1u % 32u)), _wgslsmith_div_vec3_u32(~var_1, ~var_1 & var_1)) | 0u;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b))))), firstLeadingBit(var_0.a), 26540u >> (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = func_1();
}

