struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-39232i, -1i, -1i, -5964i);

var<private> global1: array<Struct_2, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-450f, -444f), vec2<f32>(511f, 313f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1303f, 626f) + vec2<f32>(-316f, -732f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-798f, 557f), vec2<f32>(-545f, -816f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(762f, 710f), vec2<f32>(531f, -726f), vec2<bool>(true, true))))))));
}

fn func_2() -> vec2<bool> {
    global1 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(326f, -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1189f, 994f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, 1000f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-222f, 845f), vec2<f32>(386f, -644f), vec2<bool>(true, true))))))));
    var_0 = vec2<f32>(var_0.x, -577f);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = select(select(select(vec2<bool>(true, select(arg_0, arg_0, false)), select(vec2<bool>(true, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), true), arg_0), !(!arg_0)), vec2<bool>(arg_0, false), select(!(!vec2<bool>(arg_0, true)), func_2(), true)), select(!(!(!vec2<bool>(true, arg_0))), !vec2<bool>(arg_0, true), !arg_0), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 879f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1062f, 331f)) + _wgslsmith_f_op_f32(1444f - 1240f))), -1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 345f, 1202f, -435f))) + vec4<f32>(308f, 231f, 120f, -495f)), select(!vec4<bool>(arg_0, false, var_0.x, true), select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(arg_0, var_0.x, false, true), vec4<bool>(true, arg_0, var_0.x, true)), !vec4<bool>(false, false, true, arg_0)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = !vec3<bool>(false, arg_0, any(vec2<bool>(var_0.x, true)));
    var var_3 = vec3<bool>(var_2.x, any(vec4<bool>(!var_2.x, select(true, true, false), false, true)) || any(vec4<bool>(false, any(vec2<bool>(false, false)), false, true)), true);
    let var_4 = ~(~u_input.b);
    return Struct_1(var_1.yw, _wgslsmith_f_op_vec2_f32(func_3()).x, vec2<i32>(-1i, u_input.a.x), _wgslsmith_f_op_f32(select(206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + -1777f), false)), -184f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    global0 = ~_wgslsmith_clamp_vec4_i32((~vec4<i32>(-20543i, global0.x, 2147483647i, -10277i) ^ -vec4<i32>(var_0.c.x, u_input.d.x, var_0.c.x, global0.x)) >> (vec4<u32>(_wgslsmith_sub_u32(u_input.c, u_input.b), 35723u, reverseBits(22363u), _wgslsmith_mult_u32(u_input.c, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(reverseBits(~vec4<i32>(2147483647i, var_0.c.x, var_0.c.x, var_0.c.x)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(10614i, global0.x, global0.x, -10379i)), select(vec4<i32>(-9995i, 16608i, var_0.c.x, -2147483647i), vec4<i32>(8086i, -53427i, global0.x, var_0.c.x), vec4<bool>(false, true, false, true)))), -(vec4<i32>(-359i, 46037i, var_0.c.x, 1i) & -vec4<i32>(-11391i, 24459i, 8851i, 13185i)));
    var_0 = func_1(!(1i > global0.x));
    global1 = array<Struct_2, 30>();
    let var_1 = ~(~(~vec3<u32>(u_input.c, ~u_input.b, select(9330u, 1u, true))));
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, -155f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-2032f, 863f, true)))))), _wgslsmith_mult_u32(max(1u & u_input.b, _wgslsmith_clamp_u32(u_input.c, select(var_1.x, 4294967295u, true), 0u)), var_1.x & 1u), reverseBits(u_input.b), ~(_wgslsmith_add_i32(global0.x, 1i) & max(-2147483647i, u_input.a.x)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c), select(var_1, vec3<u32>(u_input.b, var_1.x, var_1.x), vec3<bool>(true, true, false))) | reverseBits(var_1.x & var_1.x)) % 32u));
}

