struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~4294967295u), 0u), 9352u, !vec2<bool>(true, false && all(vec4<bool>(false, false, true, true))), 28274i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-877f))))));
    return select(vec4<bool>(var_0.c.x, true, var_0.c.x, !(!all(var_0.c))), !vec4<bool>(any(!vec4<bool>(true, true, var_0.c.x, var_0.c.x)), true, any(var_0.c), var_0.c.x), select(!(!(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true))), vec4<bool>(!any(vec4<bool>(false, var_0.c.x, var_0.c.x, false)), select(var_0.c.x, true, var_0.c.x), true, false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 52904u, 11233u), vec4<u32>(1u, var_0.b, 24413u, var_0.b)) > _wgslsmith_mult_u32(~var_0.a.x, 56589u)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 16>();
    var var_0 = 1612u;
    var var_1 = ~1u;
    let var_2 = Struct_1(u_input.b, u_input.c.zz, select(func_3(), select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))));
    var_0 = 43712u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-625f, -891f)))))) - -1404f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = arg_0.c.x || all(!(!arg_0.c));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(firstLeadingBit(vec4<u32>(0u, arg_1.a.x, arg_1.b, 1u)), ~(vec4<u32>(arg_1.a.x, 57213u, 1u, arg_1.a.x) & vec4<u32>(1u, 52248u, 0u, 1u))), select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(21394u, arg_1.a.x, 64481u, 0u), vec4<u32>(28925u, 1u, arg_1.b, 49438u), arg_0.c), vec4<u32>(arg_1.a.x, arg_1.b, arg_1.a.x, arg_1.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, arg_1.a.x) ^ vec4<u32>(arg_1.b, 62038u, arg_1.b, arg_1.a.x), ~vec4<u32>(arg_1.b, arg_1.b, 16780u, 4294967295u)), select(!arg_0.c, vec4<bool>(false, false, false, arg_1.c.x), select(false, true, arg_1.c.x)))), firstLeadingBit(firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_1.b), arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 11820u, arg_1.a.x), vec3<u32>(55219u, 4294967295u, arg_1.b)), arg_1.b))));
    var var_2 = Struct_1(arg_0.a, _wgslsmith_mult_vec2_i32(arg_2.yy, u_input.c.xx), vec4<bool>(reverseBits(~var_1) >= _wgslsmith_dot_vec2_u32(~arg_1.a, countOneBits(arg_1.a)), select(false, func_3().x, true), all(!(!vec4<bool>(true, arg_0.c.x, false, false))), arg_1.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(953f, arg_1.e)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, arg_1.e))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(685f, var_3.x, var_3.x)))), vec3<f32>(-222f, var_3.x, var_3.x)))));
    return ~arg_1.d;
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = -526f;
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_1 = u_input.b.x | -_wgslsmith_clamp_i32(u_input.b.x | ~u_input.a, u_input.a ^ _wgslsmith_add_i32(4598i, u_input.a), u_input.b.x);
    return vec4<i32>(-2147483647i, countOneBits(u_input.b.x), 25894i, func_4(Struct_1(u_input.b, countOneBits(~vec2<i32>(35358i, var_1)), vec4<bool>(true, arg_0.x, true && arg_0.x, arg_0.x)), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(71180u, 75186u), vec2<u32>(1918u, 4294967295u)), abs(1u), select(arg_0, !arg_0, true), _wgslsmith_mult_i32(var_1, u_input.b.x) | ~var_1, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_2()))), u_input.b, firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.b.xx, ~u_input.b.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_1(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), -u_input.c.yz, select(func_3(), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(select(true, false, true), true, false, true), !func_3(), true)));
    let var_1 = 647f;
    var var_2 = var_0;
    let var_3 = Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(~71345u, ~1u), max(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 17228u)))), firstTrailingBit(1u), select(func_3().ww, !(!(!vec2<bool>(var_2.c.x, var_0.c.x))), all(!vec4<bool>(true, true, var_0.c.x, true))), countOneBits(-(~u_input.b.x) << (0u % 32u)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f + 1678f) - _wgslsmith_f_op_f32(f32(-1f) * -1104f)))));
    var_2 = global0[_wgslsmith_index_u32(~(~(~var_3.a.x)), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(~32313u, var_2.b.x);
}

