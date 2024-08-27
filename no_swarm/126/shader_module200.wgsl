struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(20568u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 61765u), vec3<u32>(0u, 0u, 4294967295u));

var<private> global3: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    global1 = array<vec3<f32>, 26>();
    global1 = array<vec3<f32>, 26>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1413f)));
    global0 = -308f;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(675f, -1585f, 326f))), global2[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.a, 57053u, arg_0)), vec4<u32>(countOneBits(arg_0), _wgslsmith_clamp_u32(52183u, 4294967295u, arg_0), 6893u, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(24745u, arg_0, arg_0), ~arg_0, ~u_input.a), 1u | u_input.a, 63506u)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~arg_0, u_input.a), 26u)]);
    return vec4<u32>(_wgslsmith_div_u32(~firstLeadingBit(~var_0.b.x), (1u << (1u % 32u)) << (~var_0.a.b.x % 32u)), u_input.a, ~8207u, max(firstLeadingBit(u_input.a), ~(~(~4294967295u))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(419f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1084f, 838f) * _wgslsmith_div_f32(-636f, -710f))))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-898f + -1870f))) - _wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(floor(322f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1245f, -228f, true)) - -2928f), _wgslsmith_f_op_f32(trunc(-777f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = countOneBits(abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(-40669i, 1i, -57590i) >> (vec3<u32>(1u, arg_2.b.x, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(25220i, -5290i, 1i))));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(arg_2.b.x | abs(_wgslsmith_mod_u32(arg_2.b.x, 32206u) & arg_2.b.x), 26u)], arg_2.b);
    var var_2 = 9604i;
    let var_3 = Struct_1(arg_2.a, arg_2.b);
    var_2 = firstTrailingBit(~_wgslsmith_div_i32(16655i, _wgslsmith_div_i32(var_0.x, -56881i)));
    return select(vec3<bool>(any(vec3<bool>(any(vec4<bool>(false, arg_1, false, true)), true, true)), arg_1, select(_wgslsmith_add_i32(var_0.x, var_0.x) <= countOneBits(1615i), !arg_1, !arg_1)), select(vec3<bool>(!arg_1, false, func_3(vec3<bool>(true, true, true), arg_1)), vec3<bool>(!(!arg_1), true, arg_1), vec3<bool>(!arg_1 && true, !(!arg_1), arg_1)), vec3<bool>(var_3.a.x == _wgslsmith_f_op_f32(round(632f)), !(-var_0.x > var_0.x), all(select(vec4<bool>(true, true, false, arg_1), !vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, arg_1, arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1401f, -881f)) - -1191f)));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(36509u, u_input.a, u_input.a, u_input.a)), abs(~vec4<u32>(u_input.a, u_input.a, 0u, 58323u)), true), _wgslsmith_div_vec4_u32(func_1(u_input.a), ~(~vec4<u32>(u_input.a, 48497u, 17542u, 1u))), ~vec4<u32>(u_input.a, ~25440u, 85965u, u_input.a)));
    global3 = all(select(select(vec3<bool>(false, true, true), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-639f, 1039f, -796f, 1201f) * vec4<f32>(-1323f, -687f, -347f, 159f)), all(vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-955f, 704f, 1011f), vec3<u32>(1u, 4294967295u, u_input.a))), select(any(vec3<bool>(true, true, false)), true, func_2(vec4<f32>(-659f, 738f, -303f, -128f), true, Struct_1(global1[_wgslsmith_index_u32(0u, 26u)], vec3<u32>(u_input.a, 0u, var_1.x))).x)), !vec3<bool>(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, true)), true), vec3<bool>(true, any(vec4<bool>(true, false, true, false)) & true, true)));
    var var_2 = abs(vec3<i32>(~52933i, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(13548i, 0i, 2147483647i), 1i), 309i));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2210f, _wgslsmith_f_op_f32(-497f * -1142f), 1f)))), ~global2[_wgslsmith_index_u32(62659u, 4u)]);
    var var_4 = func_1(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(23401u, var_3.b.x, var_1.x), ~var_3.b.x)).x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, select(0u, 17654u, true)), max(var_1.wwy, ~vec3<u32>(4294967295u, var_1.x, 0u))), _wgslsmith_div_vec3_u32(vec3<u32>(min(var_3.b.x, var_3.b.x), _wgslsmith_mod_u32(1u, 1u), 0u), min(_wgslsmith_div_vec3_u32(vec3<u32>(34953u, var_3.b.x, 0u), vec3<u32>(var_1.x, u_input.a, 70455u)), countOneBits(var_1.xzw)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_3.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.b.x, 88599u, 4294967295u), ~var_1), 1u), 4u)]);
}

