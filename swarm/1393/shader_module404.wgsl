struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(1i, 1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 35921i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 3234i), vec2<i32>(8969i, -17591i), vec2<i32>(-29065i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(-21908i, 35435i), vec2<i32>(-25337i, -3013i), vec2<i32>(-36862i, 8952i));

var<private> global3: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 1u), -683f, Struct_1(false, false), -910f);

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    global1 = Struct_3(global4[_wgslsmith_index_u32(~u_input.a.x, 16u)]);
    var var_0 = !any(select(vec2<bool>(true, 84782u > global3.a.x), vec2<bool>(arg_0.x == u_input.b.x, all(vec3<bool>(global1.a.a, global3.c.b, false))), select(select(vec2<bool>(global1.a.a, global1.a.b), vec2<bool>(true, false), global1.a.a), vec2<bool>(global3.c.a, arg_1.a), !vec2<bool>(global3.c.b, true))));
    let var_1 = -25838i;
    let var_2 = vec4<f32>(1344f, _wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(global3.d + -1214f)), global3.d, global3.b);
    let var_3 = Struct_1(false & (abs(arg_0.x) == -23201i), true);
    return 4294967295u;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(global1.a.a, !global1.a.b);
    let var_1 = vec3<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3.a.x, func_3(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 7u)]), global3.c)), ~_wgslsmith_clamp_u32(firstLeadingBit(u_input.c), 13585u, ~1u), countOneBits(4294967295u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.a.x), firstLeadingBit(u_input.a)) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(global3.a.x, u_input.a.x), func_3(u_input.b, var_0)) % 32u), _wgslsmith_dot_vec2_u32(~global3.a.xy, global3.a.yz)));
    global4 = array<Struct_1, 16>();
    var var_2 = !(!(1i > firstTrailingBit(2147483647i))) || global1.a.a;
    global0 = array<vec4<i32>, 7>();
    return vec2<f32>(1744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))) - _wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) * _wgslsmith_f_op_f32(-212f + 1422f)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<bool>((global3.b > 1597f) && !global1.a.b, select(!any(vec3<bool>(global3.c.a, false, global3.c.a)), false, global1.a.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-425f, -276f) + _wgslsmith_f_op_vec2_f32(func_2()));
    global2 = array<vec2<i32>, 13>();
    var var_2 = select(vec4<bool>(global3.a.x != (_wgslsmith_dot_vec3_u32(global3.a, global3.a) & 1u), var_0.x, global1.a.a, false), select(vec4<bool>(any(vec3<bool>(true, true, true)), false, true, true), !(!vec4<bool>(var_0.x, global1.a.b, global1.a.a, global3.c.b)), true), !(!(false == global1.a.a)));
    var_2 = vec4<bool>(false, global1.a.b, !var_0.x, !(!(!(!global1.a.b))));
    return !select(vec4<bool>(true, true, var_2.x & !global3.c.a, global3.c.b), vec4<bool>(_wgslsmith_f_op_f32(max(965f, var_1.x)) != -1375f, true, _wgslsmith_f_op_f32(-158f * global3.b) == global3.d, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(), vec4<bool>(_wgslsmith_f_op_f32(step(global3.b, global3.d)) <= 504f, true, false | (global1.a.a & false), global3.c.a), vec4<bool>(global1.a.b, global1.a.b, any(vec3<bool>(global3.c.a, global1.a.a, false)), all(vec2<bool>(global1.a.b, true)))), func_1(), vec4<bool>(any(vec4<bool>(global1.a.b, global1.a.a, -1301f != global3.d, true)), true, _wgslsmith_f_op_f32(floor(604f)) > _wgslsmith_f_op_vec2_f32(func_2()).x, all(!(!vec3<bool>(global3.c.a, global1.a.b, global3.c.b)))));
    let var_1 = vec3<bool>(true, var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.b))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-621f, global3.b)) - _wgslsmith_f_op_vec2_f32(func_2()).x))));
    global1 = Struct_3(Struct_1(any(!vec4<bool>(false, true, var_1.x, var_0.x)), true));
    global1 = Struct_3(Struct_1(!func_1().x, global3.c.b));
    global1 = Struct_3(global4[_wgslsmith_index_u32(~countOneBits(global3.a.x), 16u)]);
    global3 = Struct_2(global3.a | ~global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -942f))) + _wgslsmith_f_op_f32(floor(-687f)))), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, ~func_3(vec4<i32>(u_input.b.x, u_input.b.x, 57779i, -1i), Struct_1(var_1.x, global3.c.a))), 16u)], -395f);
    global0 = array<vec4<i32>, 7>();
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(global3.a, 1393f, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global3.a.x, 3991u, 24255u), vec4<u32>(53227u, 0u, 1u, var_2) & vec4<u32>(var_2, 0u, 0u, global3.a.x)) <= ~(~14630u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * 926f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d, global3.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(0u, 35548u), firstLeadingBit(u_input.a.x), 1u, 4294967295u), vec4<u32>(global3.a.x, global3.a.x, var_2, ~24184u), !(!var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global3.a, vec3<u32>(var_3.a.x, 15002u, 1u)), select(global3.a.x, 1u, false), global3.a.x, countOneBits(u_input.c)), vec4<u32>(~1u, _wgslsmith_clamp_u32(u_input.a.x, var_3.a.x, var_3.a.x), u_input.a.x & u_input.c, reverseBits(u_input.a.x)))), ~var_3.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(global2[_wgslsmith_index_u32(var_3.a.x, 13u)], u_input.b.yy, vec2<i32>(u_input.b.x, 3946i)), global2[_wgslsmith_index_u32(~(~15141u), 13u)]), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-458f)) - _wgslsmith_f_op_f32(421f + -2425f))))));
}

