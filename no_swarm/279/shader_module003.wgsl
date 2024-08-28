struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-508f, 349f, -1812f, 246f);

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: array<f32, 4> = array<f32, 4>(-494f, 2509f, -466f, 1912f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<f32, 4>();
    global2 = array<f32, 4>();
    let var_0 = Struct_1(~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 347u), vec2<u32>(1u, u_input.a.x)), ~_wgslsmith_add_u32(41137u, u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), reverseBits(vec4<u32>(55131u, u_input.a.x, u_input.a.x, 41247u)))), 2147483647i, ~(-vec4<i32>(1i, 1i, 1i, 1i)), all(vec2<bool>(true, true)));
    global0 = array<f32, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 4u)] + -636f) - _wgslsmith_f_op_f32(354f + -1101f)), _wgslsmith_f_op_f32(trunc(-614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) * _wgslsmith_f_op_f32(arg_0 - -1957f)), _wgslsmith_f_op_f32(trunc(arg_0)))))));
    return -reverseBits(2147483647i);
}

fn func_2() -> vec3<bool> {
    var var_0 = !vec4<bool>(true, true, true, !all(vec4<bool>(true, false, false, true)));
    let var_1 = Struct_3(0u);
    let var_2 = (var_1.a != _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) | (~(u_input.a.x & ~25738u) > (var_1.a << (var_1.a % 32u)));
    let var_3 = firstTrailingBit(vec4<i32>(firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 21306i, 2147483647i, 0i), vec4<i32>(1i, 2147483647i, -36049i, -29545i))), _wgslsmith_sub_i32(func_3(556f) & _wgslsmith_mod_i32(1i, 9338i), -_wgslsmith_mod_i32(-2147483647i, -2147483647i)), -firstTrailingBit(_wgslsmith_sub_i32(2147483647i, 2147483647i)), i32(-1i) * -(i32(-1i) * -1i)));
    var var_4 = select(!(!(!(!vec3<bool>(var_2, var_2, var_0.x)))), var_0.zxx, false);
    return select(var_0.xww, vec3<bool>(true, true, var_0.x), select(select(!select(vec3<bool>(var_4.x, var_4.x, var_0.x), vec3<bool>(true, false, true), vec3<bool>(var_4.x, var_0.x, var_4.x)), vec3<bool>(true, true | var_2, all(vec4<bool>(var_4.x, var_4.x, true, false))), select(!var_0.x, false, any(vec4<bool>(var_0.x, var_2, var_0.x, true)))), var_0.wzy, !select(select(vec3<bool>(false, true, true), var_0.wzy, var_0.xwz), select(var_0.yyy, var_0.zzz, false), var_0.zwy)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(47899u, arg_0.x, u_input.a.x) ^ u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 1u))), vec3<u32>(1u, u_input.a.x, ~firstTrailingBit(arg_0.x)))), 32u)];
    global2 = array<f32, 4>();
    var var_1 = Struct_2(any(select(vec3<bool>(true, true, true), func_2(), false)));
    let var_2 = Struct_2(false);
    let var_3 = Struct_1(vec4<u32>(18645u, 1u, reverseBits(_wgslsmith_mod_u32(1u, 4294967295u)), ~(~arg_0.x)) << (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(52513u, u_input.a.x, u_input.a.x, arg_0.x), ~vec4<u32>(4294967295u, 58965u, 0u, 17295u)), min(vec4<u32>(arg_0.x, 13722u, 15313u, arg_0.x), min(vec4<u32>(70135u, u_input.a.x, u_input.a.x, 35557u), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.x, 26749u)))) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-10355i, 0i, -10591i, 2147483647i), vec4<i32>(59208i, 1i, 1i, -14049i)), vec4<i32>(1i, -countOneBits(2147483647i), -2147483647i, 1i ^ firstTrailingBit(1i))), ~max(vec4<i32>(1i, ~(-15635i), i32(-1i) * -4433i, select(-2498i, 44949i, true)), -(~vec4<i32>(158i, 21773i, -16246i, 32068i))), true);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    global0 = array<f32, 4>();
    var var_0 = Struct_2(true);
    var var_1 = any(select(vec2<bool>(func_1(~u_input.a.yx), false), !(!select(vec2<bool>(false, false), vec2<bool>(var_0.a, false), var_0.a)), !vec2<bool>(var_0.a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(52110i, _wgslsmith_mod_i32(min(~52496i, _wgslsmith_div_i32(-1i, -567i)), 20684i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -1563f) * vec2<f32>(-394f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(16654u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) + vec2<f32>(-527f, -622f)), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a)))))));
}

