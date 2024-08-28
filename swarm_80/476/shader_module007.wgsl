struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-2178f, 508f, 601f, 1318f, -125f, 740f, 671f, 1887f, -1636f, 527f, 337f, 677f, -1471f, -603f, 297f, -442f, -678f, 3045f, 1845f, -2348f);

var<private> global1: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = ~(~(~35236u));
    var var_1 = false;
    var_0 = min(select(u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), false), max(u_input.a, ~(u_input.a >> (u_input.a % 32u)))) << (reverseBits(u_input.a) % 32u);
    var var_2 = countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(88104u, 4294967295u, 7061u, u_input.a)), firstTrailingBit(reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a, 15160u, u_input.a), vec4<u32>(u_input.a, 1u, 0u, 76258u)) ^ select(~vec4<u32>(65428u, 0u, 73988u, u_input.a), vec4<u32>(4294967295u, u_input.a, 54397u, u_input.a), !vec4<bool>(arg_0.a, arg_1.x, false, arg_0.a))));
    let var_3 = false;
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    var var_1 = Struct_1(true);
    let var_2 = Struct_1(all(select(select(!arg_1.wxy, global1[_wgslsmith_index_u32(33877u, 8u)], !vec3<bool>(var_1.a, false, false)), arg_1.xyx, (u_input.a & u_input.a) <= 125584u)));
    global1 = array<vec3<bool>, 8>();
    var var_3 = firstTrailingBit(vec3<u32>(firstTrailingBit(1u), u_input.a, abs(firstLeadingBit(firstTrailingBit(u_input.a)))));
    return min(-abs(-2147483647i), 2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = (2147483647i | min(~(~(-29037i)), func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 20u)], vec4<bool>(arg_0.a, arg_1.a, true, false), arg_1))) >> (1u % 32u);
    var var_1 = arg_0;
    var var_2 = var_0;
    let var_3 = Struct_1(false);
    global0 = array<f32, 20>();
    return max(select(_wgslsmith_sub_vec4_i32(vec4<i32>(~1i, _wgslsmith_mod_i32(22129i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -62573i, var_0), vec4<i32>(-2147483647i, 2147483647i, 1i, -1i)), 1i), vec4<i32>(min(1i, 33682i), -var_0, -6246i, -var_0)), vec4<i32>(min(~21227i, -var_0), var_0, var_0, ~1i), select(select(vec4<bool>(var_3.a, arg_2, arg_1.a, false), !vec4<bool>(true, arg_2, true, arg_0.a), any(vec4<bool>(arg_0.a, false, arg_1.a, arg_2))), select(vec4<bool>(var_1.a, false, false, arg_2), select(vec4<bool>(arg_0.a, var_1.a, false, arg_1.a), vec4<bool>(var_3.a, var_1.a, arg_2, var_1.a), arg_1.a), vec4<bool>(arg_2, arg_1.a, arg_1.a, arg_2)), vec4<bool>(arg_0.a, all(vec4<bool>(var_3.a, arg_0.a, arg_2, false)), select(true, true, false), all(global1[_wgslsmith_index_u32(u_input.a, 8u)])))), vec4<i32>(var_0 >> (_wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 61039u))) % 32u), ~firstTrailingBit(max(-1i, var_0)), _wgslsmith_mod_i32((var_0 & -6859i) & -16438i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -86415i, var_0), -vec3<i32>(var_0, -2147483647i, var_0))), _wgslsmith_mod_i32(~(-var_0), ~_wgslsmith_clamp_i32(var_0, var_0, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = Struct_1(!any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), true)));
    var var_1 = max(2147483647i, _wgslsmith_sub_i32(1i, -1i)) & firstTrailingBit(20807i);
    let var_2 = abs((abs(_wgslsmith_sub_u32(u_input.a, 46179u)) | 20789u) ^ func_1(Struct_1(all(vec4<bool>(true, true, false, true))), vec3<bool>(var_0.a, var_0.a, !var_0.a)));
    global1 = array<vec3<bool>, 8>();
    global0 = array<f32, 20>();
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(305i, ~select(func_2(Struct_1(var_0.a), Struct_1(var_0.a), var_0.a | false), vec4<i32>(func_3(1377f, vec4<bool>(true, var_0.a, true, var_0.a), Struct_1(false)), reverseBits(2147483647i), -646i, 0i), var_0.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1204f, _wgslsmith_f_op_f32(abs(228f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] + global0[_wgslsmith_index_u32(u_input.a, 20u)]))))));
}

