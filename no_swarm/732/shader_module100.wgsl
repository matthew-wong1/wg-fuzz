struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, false, false, true, true, true, true, false, true, true, false, false, true);

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(i32(-2147483648), 2147483647i, -19749i), vec3<i32>(0i, 11768i, 57287i), vec3<i32>(30785i, 1i, 28012i), vec3<i32>(-3372i, -19312i, 0i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(1i, -18325i, 7493i), vec3<i32>(-1i, -64345i, 4550i), vec3<i32>(16392i, -79349i, -1i), vec3<i32>(1i, 32822i, 2147483647i), vec3<i32>(0i, 32593i, 2169i), vec3<i32>(i32(-2147483648), 6237i, -7832i), vec3<i32>(-6237i, 0i, 1i), vec3<i32>(10982i, 2147483647i, -1i), vec3<i32>(56587i, 6791i, 1i), vec3<i32>(0i, i32(-2147483648), 23142i), vec3<i32>(-80331i, 1i, -22133i), vec3<i32>(8386i, 2147483647i, i32(-2147483648)), vec3<i32>(67602i, 1i, 2147483647i), vec3<i32>(-4269i, 39375i, 15070i), vec3<i32>(0i, 2147483647i, 0i));

var<private> global3: vec2<f32> = vec2<f32>(-1111f, 334f);

var<private> global4: array<f32, 17> = array<f32, 17>(-667f, -312f, -1121f, -1000f, -341f, 1168f, -1124f, 262f, -1408f, -1000f, -310f, 406f, -851f, 847f, -939f, 102f, 493f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = 1i < u_input.b.x;
    let var_1 = ~(~u_input.a);
    let var_2 = (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.c), u_input.b.wzz), ~u_input.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.d)), ~vec4<i32>(-11009i, u_input.c, -49311i, 0i))) >= 31429i) | global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a << (30741u % 32u)), 18u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, 0u) >> (_wgslsmith_sub_u32(var_1, 9202u) % 32u), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(20344u, 17u)] + global3.x) * _wgslsmith_f_op_f32(-global3.x)))));
    var_0 = true;
    return u_input.c;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = countOneBits(func_3(_wgslsmith_mod_u32(firstTrailingBit(1u), ~(arg_0.c >> (u_input.a % 32u)))));
    var var_1 = ~min(~(~u_input.a >> (29652u % 32u)), _wgslsmith_mult_u32(~arg_0.c, u_input.a | ~u_input.a));
    var var_2 = !(!select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)], false, true), vec4<bool>(true, arg_0.b.a, false, false), vec4<bool>(true, false, arg_0.b.a, false)), !vec4<bool>(arg_1.a, false, false, arg_1.a), true), !vec4<bool>(global0[_wgslsmith_index_u32(32915u, 18u)], false, false, false), false));
    let var_3 = !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(4294967295u), max(arg_0.c, u_input.a) << (25777u % 32u)), 18u)] && arg_0.b.a;
    let var_4 = reverseBits(arg_0.a.a.yy);
    return (firstLeadingBit(76756u) ^ _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(49813u << (u_input.a % 32u), 1u))) >> (0u % 32u);
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(Struct_3(Struct_1(vec3<i32>(u_input.c, -8505i, 9959i)), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 18u)]), 0u), Struct_2(true)), 4294967295u), 17u)], arg_0));
    global0 = array<bool, 18>();
    var var_0 = Struct_4(Struct_2(!(!(-14552i == u_input.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-670f, -1052f)) - 547f), 1f)));
    global3 = vec2<f32>(arg_0, 594f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(77486u, u_input.a) >> (vec2<u32>(46177u, 5260u) % vec2<u32>(32u))), abs(vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(61526u, u_input.a) % vec2<u32>(32u))), 17u)]) * var_0.b);
    return !vec4<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(var_0.a.a, global0[_wgslsmith_index_u32(38404u, 18u)]), u_input.d >= -2147483647i)), any(select(select(vec2<bool>(false, var_0.a.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(33900u, 18u)])), vec2<bool>(false, true), !vec2<bool>(var_0.a.a, true))), global0[_wgslsmith_index_u32(u_input.a, 18u)], any(!vec2<bool>(var_0.a.a, global0[_wgslsmith_index_u32(u_input.a, 18u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xx | u_input.b.yy;
    let var_1 = func_1(_wgslsmith_f_op_f32(ceil(global3.x)));
    global2 = array<vec3<i32>, 20>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -792f)), _wgslsmith_f_op_f32(-global3.x)))))));
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(~(1u >> (u_input.a % 32u)), abs(u_input.a << (4294967295u % 32u))), 4294967295u >> (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 2256u) ^ firstLeadingBit(vec3<u32>(1u, u_input.a, 0u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(53407u, u_input.a, u_input.a), max(vec3<u32>(u_input.a, 1019u, u_input.a), vec3<u32>(u_input.a, 19989u, 1u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(52593u, u_input.a, u_input.a), ~vec3<u32>(4294967295u, 1u, u_input.a)))));
    let var_3 = Struct_2(!(_wgslsmith_f_op_f32(global3.x + global3.x) <= -298f) == ((true & !var_1.x) & var_1.x));
    global0 = array<bool, 18>();
    let var_4 = -var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(var_0.x & _wgslsmith_sub_i32(var_0.x, var_4)), _wgslsmith_sub_i32(u_input.c, -22337i)), _wgslsmith_f_op_f32(-global3.x));
}

