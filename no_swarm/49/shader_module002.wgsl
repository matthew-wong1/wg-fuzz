struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: f32 = 1452f;

var<private> global2: array<Struct_2, 17>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 10256u, 134622u, 35042u);

var<private> global4: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> vec4<i32> {
    return -(~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), 0i, -33062i, -2147483647i), ~(-vec4<i32>(2147483647i, -8357i, 41851i, 2147483647i))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec2<i32> {
    global4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~global3.x), 3u)] * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, 1u), _wgslsmith_dot_vec2_u32(~(~global3.zx), _wgslsmith_mod_vec2_u32(global3.zz, vec2<u32>(1u, global3.x)))), 3u)]);
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(global3.x, arg_1, 1u, arg_1), ~reverseBits(vec4<u32>(global3.x, 1u, 4294967295u, 1u))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -reverseBits(vec2<i32>(22605i, arg_3.x) ^ arg_3.xz), ~min(vec2<i32>(-arg_3.x, -arg_2.x), arg_2));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = array<f32, 3>();
    global4 = 1f;
    var var_0 = 0u;
    let var_1 = ~arg_0.x;
    global0 = array<f32, 3>();
    return vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 3u)])));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> f32 {
    var var_0 = arg_2;
    var_0 = func_4(max(func_3(true, ~0u, reverseBits(arg_0), func_2()), max(vec2<i32>(firstLeadingBit(21000i), ~39041i), _wgslsmith_div_vec2_i32(arg_0, vec2<i32>(u_input.a, u_input.a)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, 4294967295u), vec4<u32>(56938u, 3189u, 4294967295u, global3.x)), 4294967295u), _wgslsmith_add_u32(arg_1.x, _wgslsmith_dot_vec3_u32(global3.wzy, vec3<u32>(39271u, 62620u, global3.x)))) ^ _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global3.x, arg_1.x)) >> (vec2<u32>(2751u, 1u) % vec2<u32>(32u)), global3.zy), 17u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(min(arg_1.x, 1u), _wgslsmith_add_u32(global3.x, 4294967295u) >> (1u % 32u)), 3u)], select(!arg_2, select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), arg_2, arg_2), select(arg_2, !arg_2, !arg_2), !arg_2), !vec2<bool>(var_0.x, all(arg_2))));
    global2 = array<Struct_2, 17>();
    var var_1 = global2[_wgslsmith_index_u32(~arg_1.x, 17u)];
    var var_2 = min(firstTrailingBit(global3.x), 4294967295u & max(~5084u, var_1.d.x));
    return global0[_wgslsmith_index_u32(firstTrailingBit(var_1.d.x | ~firstLeadingBit(~arg_1.x)), 3u)];
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = arg_1.e;
    let var_1 = ~(~arg_1.d.x);
    var var_2 = -144f;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, arg_1.a), global3.xww, vec2<bool>(true, var_0.b.x), vec3<f32>(global0[_wgslsmith_index_u32(arg_1.d.x, 3u)], arg_1.b.x, 314f))), global3.x != arg_1.d.x)))));
    var var_3 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(22560i, u_input.a), vec3<u32>(global3.x, global3.x, 0u), vec2<bool>(true, true), vec3<f32>(global0[_wgslsmith_index_u32(10199u, 3u)], -1000f, -971f))) * global0[_wgslsmith_index_u32(min(global3.x, global3.x), 3u)])), global2[_wgslsmith_index_u32(global3.x, 17u)], _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, u_input.a), func_2().xy), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -1i, u_input.a), u_input.a))) >> (firstLeadingBit(10041u) % 32u);
    let var_1 = Struct_1(!(!vec3<bool>(true, func_4(vec2<i32>(-8527i, u_input.a), global2[_wgslsmith_index_u32(global3.x, 17u)], 1488f, vec2<bool>(true, true)).x, false)), !select(vec2<bool>(true, false), func_4(~vec2<i32>(-43172i, 16903i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, global3.x), 17u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.x, 3u)] - global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(true, false)), true));
    global2 = array<Struct_2, 17>();
    global4 = -928f;
    let var_2 = reverseBits(firstLeadingBit(vec4<u32>(~global3.x, (0u << (global3.x % 32u)) ^ 54445u, select(abs(87414u), abs(global3.x), false), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(2147483647i), -func_5(global0[_wgslsmith_index_u32(var_2.x, 3u)], global2[_wgslsmith_index_u32(global3.x, 17u)], 1i), ~1i, u_input.a), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, -47395i), vec4<i32>(u_input.a, u_input.a, -39904i, -1i)) & -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1095f))), u_input.a);
}

