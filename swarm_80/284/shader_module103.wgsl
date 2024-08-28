struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(21897u, 13872u), vec2<u32>(1u, 12450u), vec2<u32>(1u, 31329u), vec2<u32>(86894u, 1u), vec2<u32>(4294967295u, 21453u), vec2<u32>(0u, 20495u), vec2<u32>(19049u, 4294967295u), vec2<u32>(9411u, 35433u), vec2<u32>(39097u, 0u), vec2<u32>(13865u, 0u), vec2<u32>(33327u, 59029u), vec2<u32>(1u, 78894u), vec2<u32>(47954u, 0u), vec2<u32>(0u, 47860u), vec2<u32>(1u, 92327u), vec2<u32>(46217u, 0u));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(0u, 1u), 1u), Struct_1(vec2<u32>(4294967295u, 1u), 40316u), Struct_1(vec2<u32>(29096u, 4294967295u), 1u));

var<private> global3: array<i32, 7>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = !all(select(vec3<bool>(true, false, all(vec4<bool>(false, false, global4.x, global4.x))), !select(vec3<bool>(false, true, global4.x), vec3<bool>(global4.x, global4.x, global4.x), false), select(vec3<bool>(false, false, global4.x), vec3<bool>(false, global4.x, false), true)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, 639f, 2576f, -1179f)), vec4<f32>(_wgslsmith_f_op_f32(floor(905f)), 1147f, _wgslsmith_div_f32(-1726f, -904f), 1f)))));
    global2 = array<Struct_1, 3>();
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(~max(arg_0.a, vec2<u32>(arg_1, 4294967295u)), firstLeadingBit(~_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(arg_1, 16u)], global1[_wgslsmith_index_u32(9495u, 16u)]))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(arg_0.b, 1u, arg_1, arg_0.b))), min(~vec4<u32>(arg_0.a.x, 60177u, u_input.a, u_input.a), countOneBits(vec4<u32>(4294967295u, 1u, 73907u, 4294967295u) << (vec4<u32>(arg_0.b, 45604u, arg_0.a.x, arg_0.b) % vec4<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x)) == 229f;
    return arg_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_1, 18>();
    var var_0 = 1519f;
    var var_1 = _wgslsmith_f_op_f32(-895f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(595f))))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), 3u)];
    let var_3 = Struct_1(arg_0.a, max(func_3(global2[_wgslsmith_index_u32(min(4294967295u, var_2.b), 3u)], ~0u) | _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 0u), u_input.a >> (arg_0.a.x % 32u)), _wgslsmith_mod_u32(u_input.a, ~(4294967295u | u_input.a))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global3 = array<i32, 7>();
    global3 = array<i32, 7>();
    global2 = array<Struct_1, 3>();
    let var_0 = vec2<i32>(i32(-1i) * -global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29494u, arg_2.b, arg_2.a.x), vec3<u32>(1u, arg_2.a.x, arg_3.a.x)) ^ firstTrailingBit(u_input.a), 7u)], global3[_wgslsmith_index_u32(~82160u, 7u)]);
    global1 = array<vec2<u32>, 16>();
    return vec4<u32>(~1u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_3.b), vec3<u32>(arg_3.b, 43514u, arg_2.b) >> (vec3<u32>(4294967295u, arg_3.a.x, 63540u) % vec3<u32>(32u))), ~(~(~arg_2.b)), 4294967295u, _wgslsmith_add_u32(arg_0.a.x, (arg_3.b >> (arg_3.a.x % 32u)) & 43428u) ^ 113809u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1191u, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 8440u, 48665u, 0u), vec4<u32>(4294967295u, 1u, arg_0.b, u_input.a))) >> (select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 7862u, 1u, arg_0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(76584u, u_input.a, 1u, arg_0.b), vec4<u32>(u_input.a, 84855u, 29227u, 32760u))), func_4(global2[_wgslsmith_index_u32(abs(u_input.a), 3u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(504f, arg_1.x, 191f, 998f))), func_2(Struct_1(vec2<u32>(52871u, 20740u), 90807u), vec3<u32>(24279u, 4294967295u, 56147u)), global2[_wgslsmith_index_u32(1480u, 3u)]), true) % vec4<u32>(32u)));
    let var_1 = Struct_1(~(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b, u_input.a), vec2<u32>(4294967295u, 6569u)))), 1u | var_0.x);
    let var_2 = func_2(Struct_1(~var_0.xz, u_input.a), var_0.wwy);
    var var_3 = true;
    var var_4 = global3[_wgslsmith_index_u32(var_2.b, 7u)];
    return ~1u | _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(var_1.a.x ^ 47281u), ~(~0u)), 16u)], ~vec2<u32>(select(u_input.a, arg_0.b, global4.x), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_clamp_vec2_u32(select(reverseBits(vec2<u32>(u_input.a, 27631u)), global1[_wgslsmith_index_u32(1u, 16u)], select(vec2<bool>(false, true), vec2<bool>(global4.x, global4.x), global4.x)), global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(~(~u_input.a), 16u)]), ~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-746f, -695f, 147f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(281f, -700f, 105f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(316f, 1661f, -634f), vec3<f32>(-434f, 2144f, 185f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1111f, -145f, 159f), vec3<f32>(643f, -1300f, -760f))))));
    global2 = array<Struct_1, 3>();
    let var_1 = max(select(~min(abs(vec4<u32>(5097u, 3797u, 0u, 4294967295u)), vec4<u32>(u_input.a, 4294967295u, 58375u, 8547u)), max(~vec4<u32>(u_input.a, 1u, 10150u, 838u), abs(vec4<u32>(u_input.a, 14325u, 7242u, 4294967295u))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(9057u, u_input.a, 338u, u_input.a), vec4<u32>(1u, 0u, 1u, u_input.a)), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(26199u, u_input.a, 0u), vec3<u32>(18751u, u_input.a, 24447u)) == u_input.a, true, ~global3[_wgslsmith_index_u32(u_input.a, 7u)] != max(-2147483647i, 2147483647i), !select(false, true, false))), _wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(37173u, u_input.a, u_input.a, 1u), vec4<u32>(7510u, 0u, 4294967295u, u_input.a))), vec4<u32>(98093u, u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14246u), vec2<u32>(53328u, u_input.a)), 0u, ~(~u_input.a))));
    var var_2 = Struct_1(max(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x), select(var_1.zw, var_1.xx, vec2<bool>(false, true)))), ~_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(31966u, 16u)] >> (vec2<u32>(var_1.x, 0u) % vec2<u32>(32u)), firstLeadingBit(var_1.zz))), select(var_1.x, ~countOneBits(46024u | var_1.x), all(!vec3<bool>(global4.x, true, true)) & false));
    global3 = array<i32, 7>();
    var var_3 = Struct_1(~_wgslsmith_div_vec2_u32(~var_2.a, vec2<u32>(var_1.x, 0u)) >> (global1[_wgslsmith_index_u32(~u_input.a, 16u)] % vec2<u32>(32u)), var_2.b);
    var var_4 = vec2<u32>(~max(50265u, var_1.x) ^ reverseBits(reverseBits(var_2.a.x)), 48017u);
    var var_5 = any(!(!(!vec3<bool>(true, global4.x, false))));
    var var_6 = func_2(Struct_1(min(var_2.a, ~(var_1.ww >> (var_1.yx % vec2<u32>(32u)))), ~func_1(Struct_1(var_1.xy, 1u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-909f, -1265f, 1000f), vec3<f32>(1161f, -125f, 1990f), false)))), var_1.xyw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(161f, 267f, -1129f), vec3<f32>(336f, -104f, -680f)))) * vec3<f32>(1093f, -746f, _wgslsmith_f_op_f32(-804f * -1322f))))), select(var_1, func_4(Struct_1(~var_1.wx, ~28u), vec4<f32>(1614f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1223f), 217f), func_2(Struct_1(vec2<u32>(28707u, u_input.a), u_input.a), abs(vec3<u32>(4294967295u, var_3.a.x, 54550u))), global0[_wgslsmith_index_u32(62587u ^ _wgslsmith_dot_vec3_u32(var_1.xwy, vec3<u32>(22033u, var_6.b, 7789u)), 18u)]), false));
}

