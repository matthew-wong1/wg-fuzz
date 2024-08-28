struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(405f, 757f);

var<private> global1: array<f32, 3> = array<f32, 3>(1380f, -1368f, 765f);

var<private> global2: Struct_2 = Struct_2(vec4<bool>(false, false, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_2(global2.a);
    let var_1 = false;
    global0 = arg_1.a.wz;
    var var_2 = ~(~(-arg_1.b.xy));
    var var_3 = var_0.a;
    return -1139f;
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(1u, 1u, _wgslsmith_mod_u32(select(~0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(130035u, 31685u), vec2<u32>(4894u, 4294967295u)), ~(~11125u), true), _wgslsmith_mult_u32(1u, 5967u)));
    var var_1 = Struct_2(select(select(global2.a, global2.a, true), global2.a, vec4<bool>(any(select(global2.a, global2.a, global2.a.x)), global2.a.x, _wgslsmith_mult_u32(var_0.x, var_0.x) > abs(3846u), true)));
    return abs(~(~(~115903u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    global2 = Struct_2(vec4<bool>(all(!global2.a), all(vec4<bool>(true, true, true, true)), !any(!global2.a), all(!global2.a)));
    let var_0 = ~(-(~(~_wgslsmith_mod_i32(-1i, arg_0.b.x))));
    let var_1 = -199i;
    global2 = Struct_2(!(!select(global2.a, !global2.a, !global2.a)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1116f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7478u, 3u)] - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1050f, -182f))), -1040f, 321f))), ~arg_0.b << (vec3<u32>(reverseBits(_wgslsmith_add_u32(15979u, 1u)), ~(~49443u), 73068u) % vec3<u32>(32u)));
    return arg_0.a.xx;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(func_2(false, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(arg_3, 3u)], 248f, 603f, 399f), vec3<i32>(arg_2.x, u_input.a, 1i)), arg_1)), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-2041f - global1[_wgslsmith_index_u32(33714u, 3u)])), min(vec3<i32>(0i, arg_2.x, u_input.a) | vec3<i32>(-4274i, -52372i, -14653i), vec3<i32>(u_input.a, -2147483647i, u_input.a))), vec2<f32>(global1[_wgslsmith_index_u32(func_3(), 3u)], _wgslsmith_f_op_f32(f32(-1f) * -1493f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, -858f, -2020f, -2229f))), -vec3<i32>(-1i, -2147483647i, u_input.a)), arg_2.x)));
    global1 = array<f32, 3>();
    var var_0 = global2.a.zy;
    var var_1 = _wgslsmith_add_i32(arg_2.x, u_input.a);
    global0 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(7619u, ~(~20028u))), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -146f, -585f, -2278f) - vec4<f32>(254f, -415f, arg_1, 529f)), vec3<i32>(u_input.a, u_input.a, 7265i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-862f * global0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1, -1017f, global0.x) - vec4<f32>(108f, global1[_wgslsmith_index_u32(arg_3, 3u)], arg_1, global1[_wgslsmith_index_u32(arg_0.x, 3u)])), ~vec3<i32>(-2147483647i, u_input.a, arg_2.x)), _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, 0i)) ^ u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 411f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(-1000f, 891f)))) * vec2<f32>(global0.x, -1176f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.x, 3u)], 495f), -1000f) + vec2<f32>(-466f, _wgslsmith_f_op_f32(arg_1 + -1145f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2100f, 1219f) * vec2<f32>(552f, global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(926f, global0.x) - vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, global0.x)))), !var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-844f, global0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -276f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(4294967295u, 0u, 7352u), -914f, vec2<i32>(-2147483647i, 36445i), 4294967295u)))), !global2.a.x == global2.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(13154u, 3u)], 1500f) + vec2<f32>(global0.x, 822f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])))), vec2<f32>(544f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 4294967295u)), select(vec2<u32>(1u, 0u), vec2<u32>(12490u, 26770u), global2.a.x)), 3u)]), true)));
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f - global1[_wgslsmith_index_u32(11089u, 3u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(533f)) + _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<f32>(565f, global1[_wgslsmith_index_u32(92512u, 3u)], global0.x, -2110f), vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec2<f32>(global1[_wgslsmith_index_u32(1u, 3u)], -506f), Struct_1(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(79496u, 3u)], 1338f, global0.x), vec3<i32>(-40i, -2147483647i, 2555i)), u_input.a)).x)), -279f, -1189f, _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 26531u), 3u)])), ~((reverseBits(vec3<i32>(u_input.a, u_input.a, -1i)) & -vec3<i32>(0i, 35992i, u_input.a)) | max(vec3<i32>(1i, u_input.a, 21335i), select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i), global2.a.x))));
    var var_1 = var_0.b.x;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_dot_vec3_u32(reverseBits(min(select(countOneBits(vec3<u32>(124679u, 60626u, 4294967295u)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(global2.a.x, true, global2.a.x), vec3<bool>(true, false, global2.a.x), global2.a.wzw)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(71397u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 100690u)))), vec3<u32>(74543u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(25677u, 0u, 0u, 4294967295u), vec4<u32>(108883u, 17067u, 11494u, 0u)) % 32u), _wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(69622u, 15559u, 1u)), firstTrailingBit(func_3())) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(71130u, 4294967295u, 1u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 0u, 0u), vec3<u32>(36974u, 0u, 4294967295u), false), vec3<u32>(22553u, 0u, 45221u)), countOneBits(vec3<u32>(0u, 1u, 0u))));
    global2 = Struct_2(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 109835u, var_3), _wgslsmith_add_vec3_u32(vec3<u32>(var_3, var_3, var_3), vec3<u32>(var_3, var_3, 4294967295u))) >= firstLeadingBit(~var_3), any(vec2<bool>(true, true)), false, global2.a.x));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1863f, 1275f, 1713f, global0.x))), var_0.a, select(global2.a, vec4<bool>(true, true, global2.a.x, true), vec4<bool>(false, true, false, true)))), global2.a.x)), max(var_0.b, var_0.b));
    let var_5 = 2147483647i;
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(56619u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) - global0.x) + 1305f), func_3(), _wgslsmith_div_vec3_u32(~abs(~vec3<u32>(var_3, 4294967295u, 4294967295u)), vec3<u32>(var_3, var_3, firstTrailingBit(~var_3))), firstLeadingBit(2047i));
}

