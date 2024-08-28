struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(55619u, 26400u), vec2<u32>(56285u, 1u), false, vec2<f32>(-161f, -851f)), Struct_1(vec2<u32>(27799u, 68428u), vec2<u32>(4294967295u, 1u), false, vec2<f32>(-887f, 1906f)), Struct_1(vec2<u32>(0u, 51u), vec2<u32>(62904u, 47276u), true, vec2<f32>(-181f, -187f)), Struct_1(vec2<u32>(0u, 0u), vec2<u32>(12626u, 48087u), false, vec2<f32>(-126f, -200f)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 112737u), true, vec2<f32>(625f, -669f)), Struct_1(vec2<u32>(90605u, 0u), vec2<u32>(233u, 1u), false, vec2<f32>(1000f, -687f)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<u32>(88231u, 1u), false, vec2<f32>(-1417f, 1401f)), Struct_1(vec2<u32>(7867u, 2052u), vec2<u32>(1371u, 0u), false, vec2<f32>(-1000f, 361f)), Struct_1(vec2<u32>(4294967295u, 39064u), vec2<u32>(31756u, 0u), false, vec2<f32>(-1000f, -206f)), Struct_1(vec2<u32>(23353u, 62268u), vec2<u32>(25718u, 1u), false, vec2<f32>(3156f, -580f)), Struct_1(vec2<u32>(57625u, 1u), vec2<u32>(4294967295u, 12038u), false, vec2<f32>(895f, 171f)), Struct_1(vec2<u32>(51442u, 65044u), vec2<u32>(8031u, 4294967295u), true, vec2<f32>(-1197f, -1000f)), Struct_1(vec2<u32>(1u, 15969u), vec2<u32>(8485u, 2350u), false, vec2<f32>(-393f, -193f)), Struct_1(vec2<u32>(48508u, 6743u), vec2<u32>(32411u, 3368u), false, vec2<f32>(-1000f, 807f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(27287u, 29983u), false, vec2<f32>(-775f, 1013f)), Struct_1(vec2<u32>(8019u, 47122u), vec2<u32>(80220u, 0u), true, vec2<f32>(-2157f, -831f)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(78398u, 4294967295u), true, vec2<f32>(-407f, 899f)), Struct_1(vec2<u32>(4294967295u, 5989u), vec2<u32>(1u, 13018u), false, vec2<f32>(-1000f, -1490f)), Struct_1(vec2<u32>(89308u, 26086u), vec2<u32>(1u, 1u), true, vec2<f32>(921f, 623f)));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec4<f32> = vec4<f32>(865f, -1460f, 538f, 1000f);

var<private> global4: u32 = 1u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> bool {
    global1 = array<Struct_1, 19>();
    return !global2.x;
}

fn func_3() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~4294967295u & u_input.b, ~0u), min(u_input.b, u_input.b)), 19u)];
    return global2.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, arg_0.d.x, -357f, global3.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, global3.x, 1000f, arg_0.d.x)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, 972f, arg_0.d.x, _wgslsmith_f_op_f32(select(1675f, -753f, false))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, -829f, -393f, -198f))), arg_0.c))));
    global2 = select(!select(vec2<bool>(arg_0.c && global2.x, global2.x), vec2<bool>(arg_0.c | global2.x, func_2(4294967295u, global3.wz)), vec2<bool>(true, false)), vec2<bool>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b, 1u, u_input.b), vec4<u32>(2471u, 17807u, arg_0.a.x, u_input.b))) < u_input.b, !func_3()), all(!select(!vec4<bool>(arg_0.c, global2.x, arg_0.c, global2.x), vec4<bool>(false, true, global2.x, false), global2.x)));
    global4 = 44790u;
    var var_0 = Struct_1(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, 27210u), arg_0.a)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.b, arg_0.b) ^ vec2<u32>(_wgslsmith_add_u32(arg_0.a.x, u_input.b), reverseBits(u_input.b)), arg_0.b), !arg_0.c && false, arg_0.d);
    global2 = vec2<bool>(true, true);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32((var_0.b ^ arg_0.a) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), arg_0.b, var_0.a), max(vec2<u32>(0u, 32790u), ~var_0.a)) | ~vec2<u32>(~46081u, 11719u), ~countOneBits(var_0.b | vec2<u32>(arg_0.a.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.yw;
    var var_1 = func_1(global1[_wgslsmith_index_u32(4294967295u, 19u)]);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * _wgslsmith_f_op_f32(abs(895f))))), _wgslsmith_f_op_f32(f32(-1f) * -1393f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + var_0.x)), _wgslsmith_f_op_f32(trunc(-1061f)), !global2.x))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -398f, var_0.x, -347f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, -871f, var_0.x, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(227f, var_2.x, 332f, var_0.x), vec4<f32>(794f, global3.x, var_0.x, global3.x), vec4<bool>(global2.x, true, false, false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -429f, var_2.x, 699f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, 1358f, var_0.x, -1149f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-866f, -393f, var_2.x, var_0.x), vec4<f32>(var_0.x, var_2.x, var_2.x, var_0.x), vec4<bool>(global2.x, global2.x, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1172f, 561f, -423f, 1041f) * vec4<f32>(1070f, var_2.x, -218f, 105f)), select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, global2.x, true, global2.x)))))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1360f) + _wgslsmith_f_op_f32(step(-1000f, -568f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-823f - -875f), _wgslsmith_f_op_f32(global3.x * -365f)), -158f, _wgslsmith_f_op_f32(-global3.x)))));
    var_1 = u_input.b;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(724f * var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -457f)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

