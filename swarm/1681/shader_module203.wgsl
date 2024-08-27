struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, false, true, true, true, true);

var<private> global1: vec2<u32> = vec2<u32>(1u, 15034u);

var<private> global2: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(15317u, 46591u, 49766u, 1u), vec4<u32>(4294967295u, 1u, 0u, 75055u), vec4<u32>(4288u, 1u, 84632u, 0u));

var<private> global3: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_3.a.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2141f, -1145f, true)) + _wgslsmith_f_op_f32(-arg_2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1063f)))), vec2<i32>(-2147483647i, max(countOneBits(u_input.d << (23680u % 32u)), arg_0)));
    var var_1 = u_input.b;
    let var_2 = u_input.b;
    let var_3 = var_0;
    global1 = u_input.b.xy | (var_1.zy & select(arg_3.e, vec2<u32>(reverseBits(779u), ~28686u), true));
    return select(!(!arg_2.c), select(!(!select(arg_3.c, arg_3.c, vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), select(vec3<bool>(var_3.a, true, all(arg_3.c.yy)), !(!arg_2.c), true), true), all(vec4<bool>(false, any(vec4<bool>(arg_3.c.x, false, var_0.a, var_3.a)), !(arg_3.a.x > arg_2.a.x), var_3.a)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(~select((vec3<u32>(0u, 1u, global1.x) >> (u_input.b % vec3<u32>(32u))) & ~vec3<u32>(u_input.b.x, u_input.b.x, global1.x), ~u_input.b >> (_wgslsmith_div_vec3_u32(vec3<u32>(5304u, global1.x, 0u), u_input.b) % vec3<u32>(32u)), select(!vec3<bool>(arg_0, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)]), func_3(20342i, u_input.b.x, Struct_3(vec2<f32>(-1135f, -331f), -1i, vec3<bool>(false, true, arg_0), global1.x, vec2<u32>(u_input.c, global1.x)), Struct_3(vec2<f32>(326f, -997f), u_input.d, vec3<bool>(false, false, arg_0), global1.x, vec2<u32>(76492u, u_input.b.x))), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1.x, 8u)]), vec3<bool>(true, arg_0, true), global0[_wgslsmith_index_u32(60881u, 8u)]))), countOneBits(select(vec3<u32>(u_input.c, global1.x, 4294967295u), vec3<u32>(0u, u_input.c, 1u), vec3<bool>(true, false, false))));
    global2 = array<vec4<u32>, 3>();
    var var_1 = Struct_1((true & all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false, arg_0))) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b.xx | abs(var_0.xx), var_0.xz), 8u)], u_input.a.yz);
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) * 1129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1928f + -338f))), _wgslsmith_mod_i32(-16281i, _wgslsmith_dot_vec2_i32(var_1.b & max(u_input.a.xy, var_1.b), _wgslsmith_add_vec2_i32(max(u_input.a.xx, var_1.b), vec2<i32>(var_1.b.x, 0i) | vec2<i32>(var_1.b.x, u_input.d)))), !vec3<bool>(select(arg_0, all(vec2<bool>(true, true)), select(true, false, arg_0)), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], true, global0[_wgslsmith_index_u32(0u, 8u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 8u)], true, var_1.a), true)), var_1.a), firstTrailingBit(select(global1.x | ~1u, var_0.x, arg_0)), var_0.zy);
    global3 = false;
    return Struct_1(var_2.c.x || false, var_1.b);
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = array<bool, 8>();
    var var_0 = -992f;
    global2 = array<vec4<u32>, 3>();
    var var_1 = arg_0;
    global3 = global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32((50541u | global1.x) & (global1.x | u_input.c), 75751u)), 8u)];
    return u_input.c;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~1i;
    global3 = ~func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 10867u), 8u)])) >= _wgslsmith_mod_u32(~(39135u & abs(u_input.c)), _wgslsmith_clamp_u32(abs(global1.x), ~global1.x & u_input.b.x, 1u));
    var var_1 = func_2(true);
    global0 = array<bool, 8>();
    let var_2 = u_input.c;
    return min(_wgslsmith_sub_i32(-46495i, ~var_0 ^ ~(i32(-1i) * -9350i)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, func_1(Struct_1(true, u_input.a.zz))), -4365i, u_input.d), u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(37667u >> (~global1.x % 32u), 8u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(11739u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)], global0[_wgslsmith_index_u32(93899u, 8u)])) && true));
    let var_1 = min(~select(min(~global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(6426u, 3u)]), select(~vec4<u32>(u_input.b.x, global1.x, global1.x, global1.x), global2[_wgslsmith_index_u32(max(74157u, global1.x), 3u)], vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(77688u, 8u)], global0[_wgslsmith_index_u32(global1.x, 8u)])), any(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(41356u, 8u)]))), _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(40010u, 1u, 69958u, u_input.c)), vec4<u32>(~(~global1.x), 1u, 97313u, _wgslsmith_sub_u32(u_input.c, ~4294967295u))));
    var var_2 = ~0u;
    global1 = vec2<u32>(var_1.x, reverseBits(16765u));
    var var_3 = abs(_wgslsmith_add_i32(~var_0.x, u_input.a.x)) <= 22447i;
    let var_4 = _wgslsmith_f_op_f32(-314f - 2314f);
    global2 = array<vec4<u32>, 3>();
    var var_5 = max(36763u, ~(~(~global1.x))) | _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(countOneBits(var_1.www), ~vec3<u32>(u_input.c, 1u, global1.x)), _wgslsmith_sub_u32(62134u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 3u)] << (vec4<u32>(4487u, u_input.c, 130336u, 4294967295u) % vec4<u32>(32u)), ~global2[_wgslsmith_index_u32(var_1.x, 3u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec4<i32>(-1i) * -vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-17074i, var_0.x), _wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_div_i32(var_0.x, u_input.d)), -680f);
}

