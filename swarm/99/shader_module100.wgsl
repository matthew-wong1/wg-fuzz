struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-393f, -330f, 904f), vec3<f32>(582f, 444f, -383f), vec3<f32>(-1308f, 522f, 2087f), vec3<f32>(164f, 674f, -498f), vec3<f32>(-256f, -3135f, 438f), vec3<f32>(-1145f, -252f, -581f), vec3<f32>(929f, -118f, -856f), vec3<f32>(-1224f, -206f, -498f), vec3<f32>(-125f, 422f, -1186f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = u_input.a.xz;
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(u_input.d, -2147483647i, u_input.b)), firstTrailingBit(abs(vec3<i32>(-1i, 17789i, u_input.d)))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(~41209u, 4294967295u, _wgslsmith_mult_u32(arg_0, arg_1.a.x)), ~max(arg_1.a, vec3<u32>(arg_0, 4294967295u, global0.x)), u_input.a.zwz) % vec3<u32>(32u)), firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 17046i, u_input.d), ~vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = Struct_1(vec3<u32>(1u, ~12509u & (global0.x << (arg_1.a.x % 32u)), ~arg_0 | (global0.x | 4294967295u)) >> (~arg_1.a % vec3<u32>(32u)));
    global1 = array<vec3<f32>, 9>();
    var var_2 = Struct_1(vec3<u32>(arg_0, 1315u, global0.x));
    return _wgslsmith_f_op_f32(691f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) - _wgslsmith_f_op_f32(-1253f - -614f)))), 906f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.a.yzx, u_input.a.zwx, false), vec3<u32>(1u, u_input.c, global0.x)) ^ ~(~vec3<u32>(global0.x, 1u, u_input.c)), u_input.a.xwz));
    var var_1 = select(global0.x, 4294967295u, false);
    let var_2 = 1u & ~_wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, global0.x), 1u >> (abs(var_0.a.x) % 32u));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1630f))), _wgslsmith_f_op_f32(-arg_1), all(vec4<bool>(true, true, true, true)))) <= _wgslsmith_f_op_f32(func_3(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 1u, 1u), u_input.a)), var_0));
    var var_4 = Struct_1(vec3<u32>(39939u, 0u, _wgslsmith_mod_u32(~31157u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a.x, 2361u), firstLeadingBit(var_2), ~var_2))));
    return -arg_0.x;
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-512f + _wgslsmith_f_op_f32(1156f * 667f)))));
    let var_1 = Struct_1(~_wgslsmith_add_vec3_u32(~u_input.a.yzz, ~(~arg_0)));
    let var_2 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(~(i32(-1i) * -3862i), -u_input.b << (16065u % 32u)), -func_2(countOneBits(vec4<i32>(1i, u_input.b, u_input.d, 0i)), -1000f)));
    global0 = _wgslsmith_mod_vec2_u32(min(~var_1.a.yz, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), arg_0.yy)), countOneBits(vec2<u32>(47766u, u_input.c))) << (vec2<u32>(~_wgslsmith_div_u32(0u, ~84722u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1.a.x), ~(~vec2<u32>(arg_0.x, 10543u)))) % vec2<u32>(32u));
    global0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(25074u)), max(~global0.x, abs(68880u) ^ _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), ~(0u & firstTrailingBit(40109u))), ~(arg_0.x >> (global0.x % 32u)));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2, -5997i, u_input.b) & vec4<i32>(var_2, 2147483647i, 0i, 1i), -vec4<i32>(-1i, u_input.d, u_input.b, u_input.b)), countOneBits(reverseBits(vec4<i32>(-1i, u_input.b, 52589i, -26813i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(var_2, var_2, var_2, u_input.d), vec4<i32>(var_2, -2147483647i, u_input.d, var_2)))), func_2(reverseBits(vec4<i32>(~u_input.b, u_input.b, _wgslsmith_mod_i32(var_2, -39605i), -13221i)), var_0), select(var_2, firstLeadingBit(_wgslsmith_div_i32(1i, -var_2)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1591f;
    let var_1 = select(func_1(firstTrailingBit(vec3<u32>(~global0.x, 1u, _wgslsmith_clamp_u32(global0.x, global0.x, 55867u)))), reverseBits(reverseBits(firstTrailingBit(select(vec3<i32>(u_input.b, 1i, u_input.d), vec3<i32>(1i, u_input.b, u_input.d), false)))), !vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)), !(-7032i < u_input.d), true));
    let x = u_input.a;
    s_output = StorageBuffer(-1253f, 578f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 9u)]))))));
}

