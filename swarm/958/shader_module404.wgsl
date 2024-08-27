struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<u32, 5> = array<u32, 5>(85135u, 29444u, 53531u, 1u, 60361u);

var<private> global2: Struct_1;

var<private> global3: f32 = -146f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> i32 {
    let var_0 = !(arg_0 < arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f + 874f)), _wgslsmith_f_op_f32(trunc(-274f)), 940f, -629f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(779f, 1192f, 1966f, -234f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3771f, 941f, -3215f, -748f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(542f, 1657f, -798f, -790f), vec4<f32>(-770f, -467f, -822f, -1649f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-431f + 2259f), 1f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(170f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(582f)), 130f, -1053f, _wgslsmith_f_op_f32(step(-1839f, 423f)))))));
    let var_2 = firstLeadingBit(29777u);
    var var_3 = ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(7516u, arg_1.x), arg_1.yy, arg_2.x), vec2<u32>(1u, 43615u)) | 1u);
    global1 = array<u32, 5>();
    return select(2147483647i, abs(~0i), false);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = 4294967295u;
    let var_1 = func_3(countOneBits(-15734i), vec3<u32>(_wgslsmith_clamp_u32(arg_2, reverseBits(_wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_add_u32(min(55785u, arg_2), ~arg_3.b)), 11664u, 0u), vec4<bool>(arg_3.a.x, true, false, !all(!vec4<bool>(false, global2.a.x, false, arg_1.a.x))), vec4<i32>(abs(i32(-1i) * -2147483647i), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-4187i, 3376i, arg_0), -arg_0), _wgslsmith_mult_i32(u_input.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-43220i, u_input.b.x, u_input.a), vec3<i32>(u_input.c, u_input.a, u_input.b.x)), arg_0), -(~u_input.a)));
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    global0 = array<vec3<bool>, 3>();
    return true || all(select(global0[_wgslsmith_index_u32(~1u ^ select(arg_1.b, 1u, arg_3.a.x), 3u)], vec3<bool>(arg_0 > 0i, any(global0[_wgslsmith_index_u32(16440u, 3u)]), !arg_1.a.x), arg_3.a.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<f32>(-685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1382f, 2700f, func_2(0i, Struct_1(global2.a, 94168u), 6657u, Struct_1(global2.a, 4123u)))) - _wgslsmith_f_op_f32(-1f))));
    let var_1 = ~((vec2<i32>(-1i) * -u_input.b) << (countOneBits(select(vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), vec2<u32>(global2.b, 1u), true)) % vec2<u32>(32u))) << (vec2<u32>(~min(~global2.b, global2.b << (global2.b % 32u)), select(16654u, (global1[_wgslsmith_index_u32(0u, 5u)] >> (4294967295u % 32u)) << ((global2.b | 52048u) % 32u), false)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(573f, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f * var_0.x))), 1007f), all(select(vec3<bool>(global2.a.x != true, func_2(-1i, Struct_1(global2.a, global2.b), 26236u, Struct_1(global2.a, 0u)), true), !global0[_wgslsmith_index_u32(18973u, 3u)], global0[_wgslsmith_index_u32(113847u, 3u)]))));
    let var_3 = abs(~var_1);
    var var_4 = 1i;
    return Struct_1(select(global2.a, vec2<bool>(true, _wgslsmith_f_op_f32(var_2.x - -1070f) >= _wgslsmith_div_f32(var_0.x, var_2.x)), vec2<bool>(!arg_0, any(vec2<bool>(false, arg_0)))), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(arg_0.a.x, (1u >> (_wgslsmith_sub_u32(~global2.b, 11625u >> (global1[_wgslsmith_index_u32(arg_1.b, 5u)] % 32u)) % 32u)) == _wgslsmith_clamp_u32(9286u, ~(~global1[_wgslsmith_index_u32(76499u, 5u)]), 76715u));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-150f + 500f), _wgslsmith_f_op_f32(min(1165f, -1330f)))), _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_2 = vec2<bool>(false & all(global0[_wgslsmith_index_u32(~0u, 3u)]), var_0.x);
    var var_3 = -1i;
    global0 = array<vec3<bool>, 3>();
    return func_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(!global2.a.x), func_1(all(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.b, 32971u, 28001u), vec4<u32>(0u, 79972u, global2.b, 8811u)), 3u)], vec3<bool>(global2.a.x, false, global2.a.x), all(vec4<bool>(true, false, global2.a.x, global2.a.x))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(554f * -2046f), -1670f, func_4(Struct_1(global2.a, 27678u), Struct_1(global2.a, 9271u)).a.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1737f * 1806f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1114f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1189f, -833f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f), 436f))));
    var var_1 = select(!global0[_wgslsmith_index_u32(0u, 3u)], !(!global0[_wgslsmith_index_u32(~firstTrailingBit(global1[_wgslsmith_index_u32(55655u, 5u)]), 3u)]), global2.a.x);
    let var_2 = var_1.x;
    var var_3 = global2.b;
    let var_4 = Struct_1(select(vec2<bool>(true, any(!vec3<bool>(true, global2.a.x, true))), vec2<bool>(global2.a.x, global2.a.x), global2.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32((1u >> (global2.b % 32u)) >> (global2.b % 32u), 92216u), _wgslsmith_div_u32(global2.b, ~reverseBits(26055u))));
    var var_5 = _wgslsmith_div_f32(370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f + 984f)))));
    var_3 = global2.b;
    global1 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))))), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u), _wgslsmith_div_vec3_u32(vec3<u32>(~(~var_4.b), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_4.b, 1u), 4294967295u), 4294967295u), min(vec3<u32>(global2.b, 1216u, var_4.b) << (vec3<u32>(global2.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b, 5u)], 5u)], 5u)], 5u)], 109358u) % vec3<u32>(32u)), ~(~vec3<u32>(var_4.b, 103332u, 4294967295u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -400f) * 1f))));
}

