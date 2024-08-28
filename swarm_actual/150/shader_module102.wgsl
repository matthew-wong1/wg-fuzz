struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-12880i, -5541i, 2147483647i), vec3<i32>(32437i, -89184i, -61479i), vec3<i32>(16946i, 0i, 31805i), vec3<i32>(-918i, 1245i, -1i), vec3<i32>(21656i, -2695i, -1i), vec3<i32>(-32484i, 2147483647i, 2147483647i), vec3<i32>(-16144i, 24847i, 2147483647i), vec3<i32>(2147483647i, 52285i, 0i), vec3<i32>(1i, 18469i, i32(-2147483648)), vec3<i32>(90356i, 0i, i32(-2147483648)), vec3<i32>(1i, 3983i, i32(-2147483648)), vec3<i32>(31456i, 1i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(40082i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), -1i, -50427i), vec3<i32>(59291i, -2079i, 1i), vec3<i32>(i32(-2147483648), -19379i, 62625i), vec3<i32>(2147483647i, 6326i, 1745i), vec3<i32>(2147483647i, 16951i, i32(-2147483648)), vec3<i32>(1i, 18510i, 32164i), vec3<i32>(i32(-2147483648), -95340i, i32(-2147483648)), vec3<i32>(0i, -20560i, 33008i), vec3<i32>(-1i, i32(-2147483648), -32051i), vec3<i32>(i32(-2147483648), -48520i, -1i), vec3<i32>(33708i, -8611i, 1i), vec3<i32>(-34836i, -25393i, -1i), vec3<i32>(0i, -31047i, 2147483647i), vec3<i32>(62961i, 0i, -63842i));

var<private> global1: Struct_3;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, -16670i, -21459i, -19479i), vec4<i32>(-1i, 0i, -1i, -1i), vec4<i32>(-12406i, 11564i, -1i, -17310i), vec4<i32>(-32413i, 2147483647i, -10757i, 1i), vec4<i32>(0i, 1i, -32894i, -13051i), vec4<i32>(-74711i, 45431i, 1i, 1i));

var<private> global4: array<i32, 28> = array<i32, 28>(i32(-2147483648), -16293i, -38759i, -1i, 2147483647i, 18501i, -16397i, 4564i, 2147483647i, -23802i, -3690i, -1i, 2147483647i, 30034i, 1i, -11960i, -2690i, -1336i, -8401i, -38233i, 17122i, 3094i, -35003i, 54108i, i32(-2147483648), 10862i, 1i, -62535i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    global3 = array<vec4<i32>, 6>();
    global0 = array<vec3<i32>, 28>();
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2636f)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, ~0u, arg_0.x & 15188u, 57212u & u_input.d), ~(vec4<u32>(arg_1.a.x, 5741u, u_input.d, 4294967295u) | vec4<u32>(0u, 4294967295u, 76649u, 5633u))), firstTrailingBit(1u) >> (~arg_1.a.x % 32u), 0u, ~abs(~u_input.d)), u_input.a, _wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.d))), all(!global1.e.c.zyy))), global1.e);
    let var_0 = !global1.e.c;
    var var_1 = -(~(-47984i));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.b.wzy;
    let var_1 = Struct_2(global1.a, arg_2.e.a, !select(!vec4<bool>(arg_2.e.c.x, global1.e.d, global1.e.c.x, arg_2.e.d), vec4<bool>(func_3(vec2<u32>(var_0.x, arg_1.x), Struct_1(arg_1, false)), true, arg_2.e.d, global1.e.d), select(arg_2.e.c, select(global1.e.c, global1.e.c, true), global1.e.c)), !arg_2.e.e.x, select(global1.e.e, select(vec2<bool>(true, arg_2.b.x <= u_input.d), select(global1.e.c.yw, vec2<bool>(true, true), true && arg_2.e.e.x), all(global1.e.e)), global1.c <= (i32(-1i) * -1i)));
    global3 = array<vec4<i32>, 6>();
    var var_2 = countOneBits(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-39426i, global4[_wgslsmith_index_u32(arg_0, 28u)]), _wgslsmith_mult_vec2_i32(u_input.c.yx, u_input.c.xy))), select(~u_input.c.xy, vec2<i32>(-global4[_wgslsmith_index_u32(arg_0, 28u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(7424u, 76975u), 28u)]), global1.e.c.zy)));
    var var_3 = arg_2;
    return -302f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = global1.e;
    global3 = array<vec4<i32>, 6>();
    global1 = Struct_3(_wgslsmith_div_f32(947f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1892f + 1820f)))), vec4<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(28580u, 0u)), arg_0.zy), _wgslsmith_clamp_u32(49021u, min(_wgslsmith_div_u32(arg_0.x, u_input.d), global1.b.x | 4294967295u), arg_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), ~global1.b), u_input.d), 3460i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d - vec4<f32>(496f, -451f, var_0.a, 820f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, 567f, -446f), vec4<f32>(370f, 699f, var_0.b, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 2135f, -444f) + global1.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -154f, 243f, 594f) * global1.d)))), arg_2);
    var var_1 = Struct_3(_wgslsmith_div_f32(global1.d.x, var_0.a), vec4<u32>(31235u, 1u, 26043u, global1.b.x), 32647i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.x, vec4<u32>(arg_0.x, global1.b.x, 0u, global1.b.x), Struct_3(var_0.b, vec4<u32>(u_input.d, global1.b.x, 3670u, arg_0.x), global4[_wgslsmith_index_u32(0u, 28u)], vec4<f32>(-1318f, 1079f, arg_2.a, -722f), global1.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(-arg_2.b)), -532f, _wgslsmith_f_op_f32(global1.a + arg_2.a)))), Struct_2(global1.e.a, 719f, select(global1.e.c, var_0.c, !global1.e.c), false, select(arg_2.e, !select(vec2<bool>(arg_2.e.x, true), vec2<bool>(true, true), var_0.d), select(select(vec2<bool>(true, arg_1.x), vec2<bool>(true, false), vec2<bool>(global1.e.d, false)), arg_2.c.xy, all(global1.e.c)))));
    let var_2 = select(min(countOneBits(vec3<u32>(arg_0.x, u_input.d, _wgslsmith_clamp_u32(arg_0.x, global1.b.x, global1.b.x))), var_1.b.zyz), vec3<u32>(26734u, ~(~(4294967295u ^ var_1.b.x)), select(min(_wgslsmith_div_u32(97241u, global1.b.x), 38658u), ~(~var_1.b.x), var_1.e.d)), var_1.e.c.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1040f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    let var_0 = Struct_1(global1.b, !all(vec4<bool>(global1.e.d, global1.e.d && global1.e.c.x, all(global1.e.c.xyw), global1.e.d)));
    var var_1 = 341f;
    let var_2 = global4[_wgslsmith_index_u32(var_0.a.x | 1u, 28u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(global1.b.xyz, vec3<bool>(var_0.b, true, var_0.b), global1.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2892f * -301f), _wgslsmith_f_op_f32(round(global1.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), 1412f)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(global2.x, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1728f, -708f, var_3.x, -836f) * _wgslsmith_f_op_vec4_f32(-global1.d))) * global1.d), _wgslsmith_div_vec3_u32(firstTrailingBit(~(vec3<u32>(29972u, global1.b.x, 3565u) | vec3<u32>(21936u, global1.b.x, var_0.a.x))), global1.b.wwx | _wgslsmith_mod_vec3_u32(~global1.b.wyx, var_0.a.yzz)));
}

