struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(-1i, -19201i, -5942i), 1u), Struct_1(vec3<i32>(19433i, -81525i, -2992i), 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1((vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -12838i, arg_0), vec3<i32>(4391i, arg_0, -1988i))) | ~vec3<i32>(firstLeadingBit(-17155i), abs(-2147483647i), -18669i), 12226u);
    let var_1 = true;
    var var_2 = Struct_1(select(min(var_0.a, _wgslsmith_add_vec3_i32(vec3<i32>(-49761i, 0i, u_input.a), ~var_0.a)), var_0.a, !all(!vec2<bool>(var_1, true))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.b, 45711u, 62330u, var_0.b)), ~vec4<u32>(u_input.b, 4294967295u, 113267u, var_0.b)), var_0.b), abs(27410u) & firstTrailingBit(~1u)));
    return _wgslsmith_mod_u32(var_2.b, ~(~u_input.b)) >> (267u % 32u);
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 + 257f)))) * _wgslsmith_f_op_f32(max(arg_1, 298f)));
    var var_1 = Struct_1(abs(abs(~vec3<i32>(19253i, -1i, u_input.a))), 0u);
    var var_2 = vec2<i32>(234i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-2492i), firstLeadingBit(var_1.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -24773i, 36818i), var_1.a), var_1.a)), ~_wgslsmith_mult_vec3_i32(var_1.a, vec3<i32>(var_1.a.x, -59632i, u_input.a)) >> (vec3<u32>(u_input.b, func_2(-7874i, vec2<f32>(arg_1, arg_0)), 4294967295u) % vec3<u32>(32u))));
    var_1 = global0[_wgslsmith_index_u32(14317u, 2u)];
    return _wgslsmith_add_u32(u_input.b, select(~countOneBits(~4294967295u), u_input.b, true));
}

fn func_1() -> bool {
    var var_0 = vec4<i32>(max(31231i, ~(-2147483647i)), u_input.a, -1i, u_input.a);
    var var_1 = 1561u;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(17683u, _wgslsmith_sub_u32(func_2(var_0.x, vec2<f32>(-625f, 360f)), u_input.b)) << (0u % 32u), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f - _wgslsmith_f_op_f32(-643f * 2310f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(889f, 971f))))), 1643f), max(u_input.b, 1u) ^ u_input.b, reverseBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b, 20973u, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(u_input.b, 9126u, u_input.b)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(922f, -316f) * vec2<f32>(-690f, 484f)))))))));
    var_2 = ~_wgslsmith_clamp_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(68640u, 4294967295u, 47575u, var_2.x), vec4<u32>(u_input.b, 0u, u_input.b, 62431u), vec4<u32>(var_2.x, 4294967295u, var_2.x, 4005u))), _wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(var_2.x, 0u, 87812u, var_2.x)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, var_2.x, var_2.x, 4294967295u)), firstLeadingBit(vec4<u32>(40493u, 9673u, u_input.b, 1u)))), vec4<u32>(var_2.x | 1u, 0u, 1u, _wgslsmith_mult_u32(0u, ~75519u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(53567u > (~u_input.b << (reverseBits(4294967295u) % 32u)), func_1());
    let var_1 = _wgslsmith_f_op_f32(max(113f, -1488f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f - 640f) + _wgslsmith_f_op_f32(select(755f, 268f, var_0.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1414f, _wgslsmith_div_f32(-697f, -119f), select(var_0.x, true, true))) * _wgslsmith_div_f32(832f, _wgslsmith_div_f32(-428f, 1349f))));
    global0 = array<Struct_1, 2>();
    let var_2 = Struct_1(~abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(-2147483647i, u_input.a, 17389i), var_1 & var_1)), u_input.b | ~1u);
    global0 = array<Struct_1, 2>();
    var_0 = !vec2<bool>(true, !(u_input.a < -2147483647i));
    var var_3 = var_2;
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, 0i, ~(~(~(~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(433f + 218f))))));
}

