struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: array<u32, 22>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> vec4<i32> {
    var var_0 = ~arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1464f - 1140f), -1801f)))), 1114f);
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1591f, var_1.x, 922f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, arg_2, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-573f, var_1.x, 2020f, var_1.x), vec4<f32>(var_1.x, -994f, 1099f, 549f))), vec4<f32>(-1045f, var_1.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1000f, 1066f) * vec4<f32>(-2314f, var_1.x, 841f, var_1.x)), vec4<f32>(380f, 239f, var_1.x, var_1.x))))), var_1, 4738i, ~(~abs(arg_1.yy)));
    var var_3 = select(vec3<bool>(false, false, any(!(!vec2<bool>(true, arg_2)))), select(vec3<bool>(any(!vec4<bool>(arg_2, true, arg_2, arg_2)), any(!vec2<bool>(arg_2, false)), any(select(vec2<bool>(false, arg_2), vec2<bool>(false, true), true))), select(select(select(vec3<bool>(true, false, arg_2), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), arg_2)), select(select(vec3<bool>(true, true, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_2), false), any(vec2<bool>(arg_2, arg_2))), _wgslsmith_div_f32(var_2.a.x, var_2.b.x) >= _wgslsmith_div_f32(var_1.x, -190f)), select(vec3<bool>(arg_2 | false, false, arg_2), vec3<bool>(true, all(vec2<bool>(true, false)), arg_2), true)), select(select(select(!vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(arg_2, false, true), vec3<bool>(false, true, arg_2), vec3<bool>(false, arg_2, arg_2)), false), select(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, true, false), arg_2), vec3<bool>(arg_2, arg_2, true), any(vec4<bool>(arg_2, false, false, arg_2))), !(!vec3<bool>(false, false, arg_2))), !select(!vec3<bool>(true, arg_2, false), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, arg_2, arg_2), arg_2), vec3<bool>(arg_2, arg_2, arg_2)), arg_2));
    var_2 = Struct_3(vec4<f32>(390f, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_div_f32(var_2.a.x, var_2.a.x)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), 597f))), _wgslsmith_clamp_i32(u_input.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_2.c), abs(vec3<i32>(var_2.c, -2147483647i, var_2.c))), ~(-abs(var_2.c))), vec2<u32>(~21883u << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_0.x, 22u)], arg_0.x) % 32u), abs(_wgslsmith_sub_u32(arg_3, var_0.x))) >> (~select(vec2<u32>(u_input.c, 50776u), vec2<u32>(var_2.d.x, 47256u) | vec2<u32>(arg_3, var_0.x), !vec2<bool>(var_3.x, true)) % vec2<u32>(32u)));
    return -global1[_wgslsmith_index_u32(~(~(~61679u) & ~firstTrailingBit(u_input.d)), 13u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = true;
    var var_2 = 1000f;
    var var_3 = !vec2<bool>(arg_1.a.x, true);
    let var_4 = 93548u ^ reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 48591u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 22u)], 22u)], u_input.c), vec2<u32>(18035u, global2[_wgslsmith_index_u32(0u, 22u)])), vec2<u32>(26988u, countOneBits(1u))));
    return arg_1.a.x;
}

fn func_2() -> Struct_4 {
    let var_0 = !func_4(Struct_4(~func_3(vec3<u32>(4059u, u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20683u, 22u)], 22u)]), vec4<u32>(23106u, 32583u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22250u, 22u)], 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), false, u_input.a), u_input.b), Struct_1(vec4<bool>(true, u_input.b >= -2147483647i, true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1255f, -345f, -1462f) + vec3<f32>(1019f, 1037f, -394f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1491f, 890f, -1270f), vec3<f32>(1440f, -162f, -659f)))));
    let var_1 = 3202i;
    let var_2 = 1u;
    global1 = array<vec4<i32>, 13>();
    let var_3 = countOneBits(abs((u_input.c | 29074u) | 16588u));
    return Struct_4(abs(reverseBits(firstTrailingBit(vec4<i32>(u_input.b, 37375i, 2147483647i, u_input.b) >> (vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.d, 0u, global2[_wgslsmith_index_u32(var_2, 22u)]) % vec4<u32>(32u))))), u_input.b);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<u32>) -> StorageBuffer {
    global1 = array<vec4<i32>, 13>();
    global1 = array<vec4<i32>, 13>();
    let var_0 = func_2();
    let var_1 = arg_0;
    var var_2 = 0i;
    return StorageBuffer(-25851i, vec2<u32>(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(0u, 1u), ~vec2<u32>(u_input.d, 0u)), abs(arg_3.xz) ^ countOneBits(vec2<u32>(1u, arg_3.x))), firstTrailingBit(~(~0u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1027f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-809f, 1000f, false)), 1f))))), u_input.a, vec4<f32>(1500f, -825f, _wgslsmith_f_op_f32(step(-478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-932f, 1207f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(187f * _wgslsmith_f_op_f32(f32(-1f) * -2495f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global1 = array<vec4<i32>, 13>();
    let var_0 = false;
    let var_1 = true;
    global1 = array<vec4<i32>, 13>();
    let x = u_input.a;
    s_output = func_1(Struct_4(~(vec4<i32>(-1i) * -vec4<i32>(-59252i, 1i, u_input.b, u_input.b)), 1i ^ _wgslsmith_mod_i32(u_input.b, -1i)), -select((vec3<i32>(u_input.b, -47620i, u_input.b) << (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(40832u, 22u)]) % vec3<u32>(32u)), ~(~vec3<i32>(u_input.b, u_input.b, 1i)), true), var_1, ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(43506u, 22u)], global2[_wgslsmith_index_u32(99825u, 22u)]), vec3<u32>(0u, u_input.d, 46835u))));
}

