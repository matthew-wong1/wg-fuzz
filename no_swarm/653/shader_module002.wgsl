struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = vec4<u32>(4294967295u, 1u, firstTrailingBit(countOneBits(66058u >> (arg_0 % 32u))), 70216u) << (~(max(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(10963u, 3u)], arg_0, u_input.b.x, u_input.b.x)), min(vec4<u32>(4294967295u, 0u, 58845u, global0[_wgslsmith_index_u32(arg_0, 3u)]), vec4<u32>(733u, global0[_wgslsmith_index_u32(10568u, 3u)], 56754u, u_input.b.x))) & abs(firstLeadingBit(vec4<u32>(0u, 0u, 108362u, arg_0)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1141f, 729f, 165f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 219f, 104f) * vec3<f32>(-1638f, 402f, 688f)), true)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, 6115i), ~_wgslsmith_add_vec2_i32(vec2<i32>(7654i, 43772i), vec2<i32>(-1i, 41999i))) >> (vec2<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 1u), 3u)], max(u_input.b.x >> (36249u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 0u, var_0.x), vec4<u32>(var_0.x, 65413u, u_input.a.x, 8190u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(~max(var_0.x, 1u), 3u)])));
    var_0 = u_input.a | _wgslsmith_div_vec3_u32(select(vec3<u32>(65969u, u_input.b.x, _wgslsmith_div_u32(1u, var_0.x)), vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 3u)], u_input.a.x, 40987u), ~var_0.x > ~global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), ~(~u_input.a));
    global0 = array<u32, 3>();
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 12332u, 20694u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 10225u, global0[_wgslsmith_index_u32(0u, 3u)], var_0.x)), 46946u, ~u_input.a.x), abs(vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(var_0.x, 3u)]), u_input.b.x << (68173u % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 3u)] >> (global0[_wgslsmith_index_u32(var_0.x, 3u)] % 32u)))), 13306u, u_input.a.x);
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<u32, 3>();
    let var_0 = select(vec2<bool>(all(!select(arg_0.xy, arg_0.xz, vec2<bool>(true, true))), any(vec4<bool>(any(vec3<bool>(false, arg_0.x, true)), true, true, true))), select(vec2<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)])) != min(4294967295u, 73434u)), select(vec2<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), all(vec2<bool>(arg_0.x, arg_0.x))), !select(arg_0.yz, arg_0.xx, arg_0.x), !vec2<bool>(true, arg_0.x)), any(vec4<bool>(any(vec2<bool>(false, arg_0.x)), arg_3.a.x > arg_3.a.x, !arg_0.x, arg_3.a.x == arg_3.a.x))), arg_0.xz);
    global0 = array<u32, 3>();
    let var_1 = vec2<bool>(var_0.x, var_0.x);
    var var_2 = arg_3.a;
    return vec3<i32>(max(-arg_3.a.x, arg_2.x >> (83497u % 32u)), -_wgslsmith_mult_i32(25201i, _wgslsmith_dot_vec3_i32(~vec3<i32>(9977i, 2147483647i, 22787i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 35364i, -2147483647i), vec3<i32>(var_2.x, -1i, arg_2.x)))), 1i);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> StorageBuffer {
    var var_0 = ~arg_1.a.x;
    var var_1 = !arg_2;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(~(-15823i), _wgslsmith_clamp_i32(var_2.a.x, 0i, 0i)), max(~arg_1.a.x, ~19576i)), ~0i), -vec3<i32>(32429i, -4222i, 72855i) | func_4(!(!vec3<bool>(var_1.x, arg_0, false)), _wgslsmith_div_f32(681f, _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)), var_2.a, func_2()));
    let var_4 = 4294967295u;
    return StorageBuffer(~_wgslsmith_mod_u32(~var_4 << (0u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(u_input.b.x, global0[_wgslsmith_index_u32(30272u, 3u)]), _wgslsmith_add_u32(u_input.a.x, 0u)), 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(1i, 1i) | vec2<i32>(-1i, countOneBits(firstTrailingBit(-2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1519f, -2116f, 1736f), vec3<f32>(-1554f, -761f, -1447f), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, -188f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 228f, 106f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(select(-1163f, 1020f, true)), _wgslsmith_f_op_f32(-1000f * 857f), _wgslsmith_f_op_f32(select(1016f, -588f, true))))));
    var var_1 = ~46011u;
    global0 = array<u32, 3>();
    var var_2 = u_input.a;
    var_2 = abs(u_input.a);
    let x = u_input.a;
    s_output = func_1(all(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), var_2.x < 47222u))), Struct_1(-max(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -481f)), var_0.b.x)), !(!vec3<bool>(var_0.a.x >= 65368i, true, false)), _wgslsmith_div_f32(-1470f, var_0.b.x));
}

