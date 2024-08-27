struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(63071u, 0u), vec2<u32>(43696u, 1u), vec2<u32>(1u, 0u), vec2<u32>(32046u, 4294967295u), vec2<u32>(27733u, 44553u), vec2<u32>(55195u, 0u), vec2<u32>(49151u, 88942u), vec2<u32>(29063u, 33261u), vec2<u32>(52090u, 79613u), vec2<u32>(41195u, 27843u), vec2<u32>(0u, 4294967295u), vec2<u32>(12951u, 16923u), vec2<u32>(1u, 0u), vec2<u32>(22769u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(69196u, 15979u), vec2<u32>(1u, 0u), vec2<u32>(1u, 25590u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(25661u, 6672u), vec2<u32>(22883u, 75063u), vec2<u32>(65223u, 0u), vec2<u32>(0u, 134089u), vec2<u32>(4294967295u, 16343u), vec2<u32>(1u, 1u), vec2<u32>(86441u, 0u), vec2<u32>(1u, 10768u), vec2<u32>(7530u, 35792u));

var<private> global2: array<vec4<bool>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_0.a, arg_0.b, !vec2<bool>(true, !(!arg_0.c.x)));
    var var_1 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 1245f)), _wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(-1325f + _wgslsmith_f_op_f32(-922f + arg_0.b.x))))), arg_0.c);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(abs(~65062u), 29u)], ~(~u_input.c.xx)), ~countOneBits(u_input.c.x) & (_wgslsmith_sub_u32(4294967295u, u_input.b) >> (~u_input.b % 32u))) << (29053u % 32u), 16u)];
    let var_2 = vec4<i32>(2147483647i ^ firstTrailingBit(0i), var_0.a, var_1.a, 11395i) >> (u_input.c % vec4<u32>(32u));
    var var_3 = !vec2<bool>(!all(var_0.c), var_0.c.x);
    return -u_input.a;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    return StorageBuffer(-abs(-u_input.a), reverseBits((_wgslsmith_clamp_i32(u_input.a, arg_2.a, arg_2.a) >> (~u_input.c.x % 32u)) | 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1u, 16u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-var_0.b.x)) * -797f)), _wgslsmith_f_op_f32(trunc(486f)), 1268f, -170f);
    var var_2 = func_1(Struct_1(-1i, var_0.b, select(vec2<bool>(var_0.c.x, var_0.c.x && var_0.c.x), vec2<bool>(true, var_0.c.x), false)));
    var_2 = 2147483647i;
    let var_3 = -_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(i32(-1i) * -5840i, -2147483647i));
    let x = u_input.a;
    s_output = func_2(u_input.b, u_input.c.x, Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b))), !var_0.c));
}

