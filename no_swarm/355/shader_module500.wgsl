struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<f32>, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(1280f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, arg_0.x, -1245f) - _wgslsmith_f_op_vec3_f32(max(arg_0, arg_3.b))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, -223f, arg_1.a) - arg_1.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b.x, 1773f, -1649f), arg_1.b)) + arg_3.b)), arg_3.c);
    global0 = array<vec4<u32>, 21>();
    var var_1 = _wgslsmith_add_u32(1u, 109598u);
    var var_2 = _wgslsmith_f_op_f32(-383f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f + _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)))));
    return countOneBits(u_input.a);
}

fn func_3() -> u32 {
    global0 = array<vec4<u32>, 21>();
    let var_0 = false;
    global0 = array<vec4<u32>, 21>();
    let var_1 = _wgslsmith_clamp_vec3_i32(abs(select(vec3<i32>(-17241i, 26818i, u_input.a) ^ vec3<i32>(0i, 2147483647i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a), !vec3<bool>(var_0, var_0, true))), -vec3<i32>(-11904i, 34627i, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), -vec3<i32>(-1i, u_input.a, 1755i)) >> (~(~vec3<u32>(global1.x, 1u, global1.x)) % vec3<u32>(32u))) >> (select(vec3<u32>(global1.x, ~4294967295u, firstTrailingBit(global1.x)) ^ (~vec3<u32>(0u, 1u, global1.x) & vec3<u32>(global1.x, 4294967295u, 0u)), ~(vec3<u32>(global1.x, global1.x, 29103u) << ((vec3<u32>(130542u, 1u, global1.x) >> (vec3<u32>(0u, 0u, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), select(!vec3<bool>(false, var_0, false), !vec3<bool>(var_0, false, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, 2147483647i)) == 2147483647i)) % vec3<u32>(32u));
    var var_2 = Struct_4(true || var_0);
    return global1.x;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = ~(~select(arg_0.a, global1.x, true)) >> (_wgslsmith_sub_u32(global1.x, 0u) % 32u);
    global1 = _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(func_3(), var_0 >> (47802u % 32u))), ~global1.x), ~(~(~countOneBits(vec3<u32>(var_0, var_0, arg_0.a)))));
    var var_1 = Struct_4(!(11219u > _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 6527u), vec4<u32>(var_0, arg_0.a, 52198u, var_0))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-919f - _wgslsmith_f_op_f32(abs(-208f)))))));
    var var_3 = vec2<bool>(all(select(vec3<bool>(-14183i <= u_input.a, true, !var_1.a), vec3<bool>(true, true, true), var_1.a)), true);
    return ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(53469u, 78117u, global1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0), vec3<u32>(4294967295u, var_0, var_0), vec3<u32>(0u, global1.x, 0u))), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.a, global1.x, arg_0.a), min(vec3<u32>(1u, 1u, 1u), vec3<u32>(global1.x, 1175u, 0u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> bool {
    global1 = ~arg_1;
    var var_0 = Struct_3(arg_0.x);
    let var_1 = ~abs(4294967295u);
    var_0 = Struct_3(global1.x);
    var var_2 = vec2<bool>(true | (_wgslsmith_f_op_f32(f32(-1f) * -709f) <= _wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(step(-540f, 1487f)))), !(all(vec3<bool>(true, true, true)) & true));
    return false | (all(!(!vec3<bool>(var_2.x, var_2.x, var_2.x))) || (var_2.x != (any(vec2<bool>(true, var_2.x)) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!func_4(global0[_wgslsmith_index_u32(global1.x, 21u)], func_2(Struct_3(4294967295u), func_1(vec3<f32>(-116f, 364f, 148f), Struct_2(-1000f, vec3<f32>(-334f, 1015f, 1154f), global1.x), u_input.a, Struct_2(790f, vec3<f32>(-1000f, 1070f, -1647f), global1.x)), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), global1.yx));
    var var_1 = vec3<bool>(!(func_4(max(global0[_wgslsmith_index_u32(global1.x, 21u)], global0[_wgslsmith_index_u32(global1.x, 21u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(global1.x, 1u, 4294967295u)), reverseBits(vec2<u32>(0u, global1.x))) | false), !var_0.a, true);
    var var_2 = global1.yz;
    let var_3 = Struct_3(~1u);
    global2 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(902f, 1096f, 503f, -1000f) * vec4<f32>(551f, -1248f, -243f, -746f)), vec4<f32>(409f, -1442f, -1029f, 1442f))), vec4<f32>(-1610f, 779f, _wgslsmith_f_op_f32(sign(933f)), 101f)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~75114i, u_input.a, func_1(vec3<f32>(1000f, 1016f, -638f), Struct_2(477f, vec3<f32>(364f, 112f, 1000f), 0u), u_input.a, Struct_2(592f, vec3<f32>(1066f, -223f, -1918f), 12566u)), u_input.a), vec4<i32>(i32(-1i) * -16479i, -2147483647i, u_input.a, 1i)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, -234f, 800f))), Struct_2(-1299f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -855f, 1736f)), global1.x), _wgslsmith_mult_i32(select(160i, u_input.a, var_0.a), -u_input.a), Struct_2(913f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1723f, 540f, -866f)), var_3.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(14894u, 23u)]) + global2[_wgslsmith_index_u32(var_3.a, 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, 859f) * vec2<f32>(-628f, 1344f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(ceil(113f)))), false)), 33829u);
}

