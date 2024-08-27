struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: array<vec3<f32>, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -246f))), false)));
    var var_0 = Struct_4(arg_1.a.x, Struct_3(arg_1.a, max(~arg_3 << (arg_1.b % 32u), ~arg_3), _wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(~arg_3, 10u)]))), !select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, arg_3), ~vec3<u32>(arg_3, 626u, u_input.a)), 16u)], global1[_wgslsmith_index_u32(arg_1.b, 16u)], any(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true))));
    let var_1 = u_input.c.zyz;
    var var_2 = arg_1;
    return var_2.c.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(min(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yz << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(u_input.c.yy, ~u_input.c.yy)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.xx ^ vec2<u32>(98264u, u_input.a)), u_input.c.x ^ (u_input.a | u_input.a))), 1u);
    var var_1 = arg_0.x;
    let var_2 = 222f;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0, arg_0), arg_0)) + _wgslsmith_f_op_vec2_f32(floor(arg_0)));
    let var_4 = all(vec2<bool>(false, false));
    return Struct_2(Struct_1(any(!vec3<bool>(var_4, var_4, arg_1))), Struct_1(!arg_1 & true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_0.b;
    var var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1222f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), Struct_3(vec3<i32>(u_input.d, 29351i, arg_0.a.x), 120510u, vec3<f32>(-398f, 623f, 1728f)), arg_0.c.x, 0u))) - _wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(-375f + arg_0.c.x)))), true);
    let var_2 = Struct_4(u_input.d, Struct_3(~abs(arg_0.a ^ vec3<i32>(arg_0.a.x, 1i, 44070i)), u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x) + _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(24949u, 10u)] * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.x, 556f, arg_0.c.x)))))), vec3<bool>(arg_0.b == firstTrailingBit(~var_0), arg_1.a.a, all(select(select(vec4<bool>(true, false, arg_1.b.a, arg_1.a.a), vec4<bool>(var_1.a.a, arg_1.b.a, var_1.a.a, var_1.b.a), vec4<bool>(arg_1.b.a, var_1.b.a, arg_1.a.a, var_1.a.a)), select(vec4<bool>(arg_1.a.a, false, false, true), vec4<bool>(false, arg_1.a.a, true, var_1.b.a), vec4<bool>(false, var_1.b.a, false, false)), all(vec2<bool>(true, var_1.a.a))))));
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    return abs(firstTrailingBit(~(-vec4<i32>(u_input.d, 15310i, 0i, -8530i))) << (~vec4<u32>(_wgslsmith_sub_u32(arg_2.x, 66967u), arg_2.x, arg_0.b, var_2.b.b) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(func_1(Struct_3(vec3<i32>(2147483647i, u_input.d, -1i), u_input.a, global2[_wgslsmith_index_u32(u_input.b, 10u)]), Struct_2(Struct_1(true), Struct_1(true)), vec4<u32>(4248u, 64663u, 102808u, u_input.c.x)) & vec4<i32>(u_input.d, 2147483647i, u_input.d, -17483i)) >> (vec4<u32>(select(u_input.c.x | u_input.b, ~u_input.c.x, u_input.d < 0i) & 19764u, 4294967295u, ~max(0u | u_input.c.x, ~61532u), 25724u) % vec4<u32>(32u));
    let var_1 = Struct_1(1i > _wgslsmith_mod_i32(func_1(Struct_3(vec3<i32>(-1i, var_0.x, 2147483647i), u_input.b, global2[_wgslsmith_index_u32(4294967295u, 10u)]), func_3(vec2<f32>(1000f, -1567f), false), vec4<u32>(41748u, 16188u, u_input.b, 22794u)).x, 1265i));
    global1 = array<vec3<bool>, 16>();
    global2 = array<vec3<f32>, 10>();
    let var_2 = vec4<u32>(min(u_input.a, 1u), 50318u, ~u_input.b, u_input.c.x);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(152f + 1404f)))), -820f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-126f, 960f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1138f, -156f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 480f) - _wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1186f))), global2[_wgslsmith_index_u32(7518u, 10u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1137f, var_3.x, var_3.x) + vec4<f32>(var_3.x, -1202f, -854f, var_3.x)), vec4<f32>(var_3.x, -954f, 1596f, 1015f), select(vec4<bool>(false, var_1.a, var_1.a, true), vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(true, var_1.a, var_1.a, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, -654f, var_3.x, var_3.x), vec4<f32>(-1379f, var_3.x, -2218f, 637f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(883f, -371f, -1174f, 1342f) * vec4<f32>(-605f, var_3.x, 427f, 459f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1480f, -106f, 217f, var_3.x))))))), _wgslsmith_dot_vec2_u32(u_input.c.zy, reverseBits(~var_2.zz)), u_input.c);
}

