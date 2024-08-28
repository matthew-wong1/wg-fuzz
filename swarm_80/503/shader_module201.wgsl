struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32((1u << (reverseBits(1u >> (1u % 32u)) % 32u)) | arg_0, 32u)];
    global2 = array<Struct_1, 32>();
    global1 = !select(true, !(arg_0 != ~u_input.a), !((24693u << (arg_0 % 32u)) == ~61852u));
    global0 = reverseBits(reverseBits(-2147483647i));
    var var_1 = 0u;
    return !(false || any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    return select(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), true), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), false), true)), vec2<bool>(true, all(!select(vec3<bool>(false, true, false), vec3<bool>(arg_0, true, false), arg_0))), vec2<bool>(all(vec3<bool>(arg_0 | arg_0, !arg_0, false)), arg_0));
}

fn func_1() -> Struct_1 {
    global1 = any(select(select(vec2<bool>(true, func_2(0u, Struct_1(vec2<i32>(-14474i, -1i)), vec3<i32>(2147483647i, -4092i, 1845i))), vec2<bool>(true, true), 1u != u_input.a), !(!func_3(false, Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(0i, -1i)), global2[_wgslsmith_index_u32(1u, 32u)])), all(vec3<bool>(true, true, true))));
    global1 = true;
    global1 = func_2(max(_wgslsmith_div_u32(max(88560u, 19533u), u_input.a << (0u % 32u)), firstTrailingBit(u_input.a)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-53242i, -2147483647i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), vec3<i32>(1i, 1i, 1i)) & true;
    global2 = array<Struct_1, 32>();
    global1 = true;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u) & u_input.a, ~(~0u), ~1u), vec3<u32>(u_input.a ^ select(u_input.a, u_input.a, true), u_input.a, ~u_input.a)), ~max(23383u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(60126u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = any(vec4<bool>(!any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, all(vec4<bool>(true, true, false, false)))), false, true));
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, -313f))), _wgslsmith_f_op_f32(ceil(2274f)))), -1017f);
}

