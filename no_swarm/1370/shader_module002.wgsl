struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 1u, 4294967295u, 0u, 3605u, 4294967295u, 4294967295u, 30200u, 4294967295u, 1u, 81602u, 1u, 1u, 4888u, 1u, 4294967295u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz ^ u_input.b.yx, u_input.b.xz), 16u)]), firstTrailingBit(vec2<u32>((4294967295u ^ global0[_wgslsmith_index_u32(15337u, 16u)]) ^ 73674u, 3150u)));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(475f, _wgslsmith_f_op_f32(sign(-876f))))));
    var var_2 = min(select(vec4<u32>(var_0.x, countOneBits(1u), 51999u, abs(0u)) | _wgslsmith_div_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), vec4<u32>(var_0.x, u_input.b.x, 0u, var_0.x) >> (u_input.b % vec4<u32>(32u))), max(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(77295u, 16u)], var_0.x), vec4<u32>(4294967295u, 67107u, u_input.b.x, 57125u)) ^ ((vec4<u32>(0u, 1u, 9442u, 1u) >> (u_input.b % vec4<u32>(32u))) & ~u_input.b), vec4<bool>(false | (var_0.x >= 1u), any(vec4<bool>(true, true, true, true)), true, var_1 > _wgslsmith_f_op_f32(f32(-1f) * -1320f))), ~reverseBits(reverseBits(u_input.b) | vec4<u32>(49026u, 34139u, 18722u, 0u)));
    return !all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<f32> {
    var var_0 = vec4<i32>(-_wgslsmith_mult_i32(24780i, firstTrailingBit(u_input.a) >> (78754u % 32u)), -1i, 535i, -52031i | ~u_input.a);
    var_0 = ~(~vec4<i32>(11867i, _wgslsmith_div_i32(u_input.a, 0i) >> (global0[_wgslsmith_index_u32(30312u, 16u)] % 32u), -var_0.x, 0i));
    global0 = array<u32, 16>();
    let var_1 = !vec4<bool>(arg_0.x, arg_0.x | arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) & true, arg_0.x);
    let var_2 = vec3<bool>(var_1.x, func_3(), true);
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -800f), 1839f, _wgslsmith_f_op_f32(-2095f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2366f), _wgslsmith_f_op_f32(-1496f - _wgslsmith_f_op_f32(1143f - -243f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 16>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(129f + -1168f), any(vec3<bool>(false, (52963u | global0[_wgslsmith_index_u32(4294967295u, 16u)]) < _wgslsmith_add_u32(21140u, u_input.b.x), true && all(vec3<bool>(true, false, true)))), Struct_1(~(~vec4<u32>(1u, 0u, 4294967295u, u_input.b.x)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), u_input.b)), 0u == _wgslsmith_mod_u32(19283u ^ global0[_wgslsmith_index_u32(34946u, 16u)], 2171u), arg_0.x), vec4<bool>(1i < (_wgslsmith_div_i32(arg_1, 18772i) << (abs(u_input.b.x) % 32u)), all(vec2<bool>(select(false, true, true), -126f < arg_0.x)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.ywx))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.yyw, vec3<f32>(arg_0.x, -1679f, -1633f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -951f, arg_0.x) - arg_0.xzw)))));
    var var_1 = func_3();
    global0 = array<u32, 16>();
    var var_2 = Struct_1(u_input.b, 29233u, !(!select(true, false, true)) || var_0.c.c, var_0.a);
    return var_0.c;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-717f, -665f, 681f, 1000f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, false))))))), -_wgslsmith_mult_i32(1i, -1i));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(669f * arg_1), arg_2.d)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1, 1148f, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1158f, 1000f, false)))) + 670f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)));
    let var_1 = Struct_1(u_input.b, countOneBits(u_input.b.x), select(true, !(!(!arg_2.c)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-457f * arg_1), arg_2.c)))));
    var var_2 = vec2<bool>(!((true || (13495i > arg_3.x)) && !all(vec3<bool>(false, false, true))), false);
    let var_3 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(28120u, arg_2.b, 1u, arg_0)), var_1.a) >> (9652u % 32u);
    var_2 = select(vec2<bool>(arg_0 < (4294967295u & u_input.b.x), func_3()), vec2<bool>(func_3(), !arg_2.c), !var_1.c);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), any(select(select(!vec4<bool>(var_1.c, false, false, false), select(vec4<bool>(true, true, arg_2.c, var_1.c), vec4<bool>(false, true, arg_2.c, true), var_1.c), func_3()), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, var_1.c), var_2.x), select(vec4<bool>(false, true, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, var_1.c, var_2.x, false), vec4<bool>(true, true, arg_2.c, var_2.x)))), func_4(vec4<f32>(_wgslsmith_f_op_f32(-func_4(vec4<f32>(arg_1, 729f, -420f, arg_1), -1i).d), _wgslsmith_f_op_f32(trunc(443f)), arg_1, -1000f), 20444i), select(vec4<bool>(-14357i >= ~u_input.a, var_2.x, true, !(!var_2.x)), !select(!vec4<bool>(arg_2.c, var_2.x, true, true), select(vec4<bool>(true, false, var_2.x, false), vec4<bool>(var_1.c, true, true, var_1.c), vec4<bool>(arg_2.c, var_2.x, arg_2.c, arg_2.c)), true), vec4<bool>(all(!vec4<bool>(var_2.x, true, false, true)), _wgslsmith_f_op_f32(arg_2.d - arg_2.d) < 549f, !all(vec4<bool>(var_2.x, var_1.c, var_2.x, var_2.x)), true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0 - var_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_0 = u_input.a;
    global0 = array<u32, 16>();
    let var_1 = func_5(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), u_input.b.x & (u_input.b.x >> (0u % 32u)), ~(~u_input.b.x), 4294967295u)), -1192f, func_1(), (vec3<i32>(-1i) * -(~vec3<i32>(0i, u_input.a, var_0))) >> (u_input.b.www % vec3<u32>(32u)));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c.a.zy, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(917f, var_1.c.d, -350f, var_1.e.x))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_1.e.x, 525f), -472f, var_1.a, _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -609f, var_1.a, 1077f) + vec4<f32>(var_1.e.x, var_1.c.d, var_1.a, 790f)), vec4<f32>(var_1.a, 1755f, -1654f, -1000f))))))), 1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e.xy) + var_1.e.xz))));
}

