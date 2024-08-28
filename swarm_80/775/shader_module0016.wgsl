struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(select(1u, ~(firstTrailingBit(0u) | 1u), !arg_0.x));
    var_0 = Struct_1(4294967295u);
    var var_1 = vec3<u32>(select(var_0.a, firstTrailingBit(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, var_0.a), var_0.a) == abs(_wgslsmith_dot_vec2_u32(vec2<u32>(45440u, 64384u), vec2<u32>(var_0.a, var_0.a)))), var_0.a, var_0.a);
    var_0 = Struct_1(var_0.a);
    var var_2 = -1000f;
    return vec4<u32>(var_1.x, 4294967295u, ~min(0u, 59964u), ~reverseBits(~4294967295u));
}

fn func_2() -> u32 {
    let var_0 = false;
    let var_1 = min(vec4<u32>(1u, 1u, 1u, 1u) >> (_wgslsmith_mod_vec4_u32(func_3(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(false, var_0))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(84326u, 0u, 4294967295u, 38714u), vec4<u32>(34568u, 90445u, 55641u, 0u)), ~5466u, abs(4294967295u), 17024u)) % vec4<u32>(32u)), ~abs(vec4<u32>(46233u, 0u, 110u, 4294967295u)) | vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(78617u, 4294967295u), vec2<u32>(4294967295u, 1u)) << (abs(115589u) % 32u), 0u, 4831u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1834f, 718f, 2499f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, 393f, -2215f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -830f, 731f))) * vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(561f, -298f)))));
    let var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_1.x), ~var_1.x) & 4294967295u, 74194u));
    var var_4 = Struct_1(var_3.a);
    return reverseBits(var_3.a);
}

fn func_1() -> StorageBuffer {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = ~min(~1u, ~58266u) ^ min(7220u, func_2() ^ 4294967295u);
    var_1 = select(~79858u, func_3(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)).x, true);
    var var_2 = firstTrailingBit(firstTrailingBit(~(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i) ^ reverseBits(u_input.a))));
    var_2 = vec4<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(firstLeadingBit(57489i), (var_2.x >> (0u % 32u)) & -var_2.x)), -1i, var_2.x, 43419i);
    return StorageBuffer(max(vec3<i32>(var_2.x, 1i, _wgslsmith_add_i32(var_2.x, u_input.a.x)), var_2.yww));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

