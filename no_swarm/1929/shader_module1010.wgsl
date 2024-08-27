struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_3(u_input.d, min(1u, u_input.a.x), Struct_1(vec2<bool>(false, true), true)), min(65462u, reverseBits(u_input.a.x)));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var var_1 = !var_0.a.c.b;
    let var_2 = select(select(!vec4<bool>(any(var_0.a.c.a), all(vec2<bool>(false, var_0.a.c.b)), true, var_0.a.c.a.x), !(!vec4<bool>(false, var_0.a.c.a.x, var_0.a.c.b, false)), true), !(!vec4<bool>(true, all(vec4<bool>(var_0.a.c.a.x, var_0.a.c.a.x, var_0.a.c.b, false)), true, false)), select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a.c.a.x, false, var_0.a.c.b, false), var_0.a.c.b), !vec4<bool>(var_0.a.c.b, false, var_0.a.c.a.x, var_0.a.c.b), var_0.a.c.b), select(vec4<bool>(false, var_0.a.c.b, var_0.a.c.b, true), select(vec4<bool>(true, var_0.a.c.b, var_0.a.c.a.x, true), vec4<bool>(var_0.a.c.a.x, var_0.a.c.b, false, false), vec4<bool>(false, false, var_0.a.c.a.x, var_0.a.c.a.x)), !var_0.a.c.b), all(!vec3<bool>(false, var_0.a.c.b, var_0.a.c.b))), select(select(vec4<bool>(var_0.a.c.b, var_0.a.c.a.x, var_0.a.c.a.x, var_0.a.c.b), !vec4<bool>(var_0.a.c.b, var_0.a.c.a.x, var_0.a.c.a.x, true), !vec4<bool>(false, false, true, var_0.a.c.a.x)), !select(vec4<bool>(false, false, true, var_0.a.c.b), vec4<bool>(var_0.a.c.b, false, false, var_0.a.c.b), var_0.a.c.a.x), vec4<bool>(var_0.a.c.a.x, false, !var_0.a.c.b, any(vec3<bool>(false, false, var_0.a.c.a.x)))), var_0.a.c.a.x));
    return _wgslsmith_div_i32(var_0.a.a, u_input.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-396f + _wgslsmith_f_op_f32(f32(-1f) * -1484f)), arg_0.x, -776f);
    let var_1 = Struct_3(_wgslsmith_sub_i32(u_input.d, func_3()), ~_wgslsmith_clamp_u32(arg_1.x, 4294967295u, arg_1.x) & 0u, Struct_1(vec2<bool>(any(vec3<bool>(true, false, true)), false), 825f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - arg_0.x)))));
    let var_2 = -vec3<i32>(-46481i, i32(-1i) * -41945i, countOneBits(0i));
    var var_3 = var_2.zz;
    let var_4 = var_2;
    return -2147483647i;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = abs(arg_0.b);
    let var_1 = ~vec4<i32>(abs(arg_0.a ^ ~(-19028i)), firstLeadingBit(_wgslsmith_mod_i32(~u_input.c, u_input.c)), reverseBits(max(func_2(vec3<f32>(-372f, 1114f, -347f), vec4<u32>(u_input.e, u_input.a.x, var_0, arg_0.b)), max(59390i, arg_0.a))), _wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.d, u_input.c), ~(636i | arg_0.a)));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_2 = firstTrailingBit(u_input.e);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4) -> i32 {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var var_0 = arg_2.b;
    let var_1 = ~(~20452i);
    return -_wgslsmith_div_i32(-u_input.d | -49438i, firstLeadingBit(-27715i));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = !arg_1.c.b;
    let var_1 = false;
    global0 = array<vec2<u32>, 31>();
    return StorageBuffer(614f, arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-186f, -715f, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(325f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(sign(126f))), -1066f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f), -1662f), -1322f, -1000f, 368f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-857f, -1030f, 466f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) * 377f);
    var var_1 = vec2<u32>(u_input.a.x, ~1u);
    global0 = array<vec2<u32>, 31>();
    let var_2 = -(~_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.c, u_input.c, -37887i)), -vec3<i32>(-42506i, u_input.d, -7728i) >> (vec3<u32>(u_input.e, u_input.e, 86561u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = func_5(-_wgslsmith_sub_i32(func_4(func_1(Struct_3(-24354i, 98563u, Struct_1(vec2<bool>(true, false), true))), select(-16452i, -2147483647i, true), Struct_4(Struct_3(var_2, var_1.x, Struct_1(vec2<bool>(true, true), false)), var_1.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.d), min(vec2<i32>(-1i, var_2), vec2<i32>(11118i, var_2)))), Struct_3(var_2, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x << (1u % 32u), 20664u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(44810u, var_1.x, 66983u, 52217u)), ~vec4<u32>(0u, 16337u, u_input.e, 16014u))), func_1(func_1(Struct_3(-1i, 0u, Struct_1(vec2<bool>(true, true), true)))).c));
}

