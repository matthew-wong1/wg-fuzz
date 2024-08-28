struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(2147483647i, 6240i, 24265i), vec3<i32>(13395i, 0i, 0i), vec3<i32>(-4022i, 1191i, -1188i), vec3<i32>(-7918i, i32(-2147483648), 25827i), vec3<i32>(3278i, 0i, 1i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(-6993i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, -38348i, i32(-2147483648)), vec3<i32>(-2372i, 24465i, -22554i), vec3<i32>(-38679i, 28014i, 42878i), vec3<i32>(-27612i, 0i, -15764i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(0i, 0i, 19233i), vec3<i32>(-33789i, -1i, -779i), vec3<i32>(11159i, 2147483647i, 1i), vec3<i32>(-24967i, 9836i, i32(-2147483648)), vec3<i32>(-80767i, 1i, 33724i), vec3<i32>(-9139i, -903i, 65249i), vec3<i32>(1i, 1i, -27477i), vec3<i32>(-27452i, -1i, 0i), vec3<i32>(-29099i, 2147483647i, -1i), vec3<i32>(36488i, -1i, -17781i), vec3<i32>(21556i, -1i, i32(-2147483648)), vec3<i32>(20944i, 8097i, 0i), vec3<i32>(-28806i, 7891i, -15082i));

var<private> global1: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(abs(1200f))));
    global1 = array<vec3<u32>, 13>();
    global0 = array<vec3<i32>, 25>();
    let var_1 = all(!(!vec3<bool>(190f < arg_3.a, arg_1.a, arg_1.a)));
    let var_2 = arg_1;
    return arg_3.a;
}

fn func_2() -> Struct_1 {
    return Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, false)), true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))), vec4<f32>(1089f, _wgslsmith_f_op_f32(-1282f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(199f), Struct_1(true, vec4<f32>(-1000f, -1060f, -307f, -1251f), vec4<f32>(-1300f, 170f, -1000f, 1114f), 15017u), vec2<f32>(-1576f, -1000f), Struct_2(2047f))), -1693f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -781f))), -399f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1145f, -1000f)), _wgslsmith_f_op_f32(min(-1000f, -344f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(721f * -527f), _wgslsmith_f_op_f32(1611f * 459f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1471f)) + _wgslsmith_div_f32(734f, -2370f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(663f + -763f), 1463f, 854f, _wgslsmith_f_op_f32(max(-255f, 1174f))))), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(~1u, 1u)));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec3<i32>, 25>();
    let var_0 = u_input.a;
    global1 = array<vec3<u32>, 13>();
    global1 = array<vec3<u32>, 13>();
    let var_1 = func_2();
    return 104f;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    global1 = array<vec3<u32>, 13>();
    var var_0 = i32(-1i) * -arg_2.x;
    global0 = array<vec3<i32>, 25>();
    global0 = array<vec3<i32>, 25>();
    var_0 = arg_2.x;
    return -u_input.a;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> u32 {
    global0 = array<vec3<i32>, 25>();
    global1 = array<vec3<u32>, 13>();
    global1 = array<vec3<u32>, 13>();
    let var_0 = arg_2;
    let var_1 = vec4<u32>(~firstTrailingBit(countOneBits(_wgslsmith_mod_u32(106711u, 1u))), 1u, ~(~(~reverseBits(24777u))), countOneBits(select(~(4294967295u << (0u % 32u)), ~abs(60566u), true || (arg_1 > -8191i))));
    return _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u) & var_1.x, ~var_1.x, 4294967295u) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(115765u, 4294967295u, var_1.x, var_1.x), vec4<u32>(1u, var_1.x, 47696u, 14502u)), var_1.x) % 32u));
}

fn func_6(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = vec4<bool>(func_2().a, all(!vec2<bool>(any(vec3<bool>(false, true, false)), true)), !(_wgslsmith_f_op_f32(func_1(firstLeadingBit(global1[_wgslsmith_index_u32(69316u, 13u)]))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 1u, arg_0))))), false);
    var var_1 = Struct_2(684f);
    global1 = array<vec3<u32>, 13>();
    var var_2 = 27017i;
    global0 = array<vec3<i32>, 25>();
    return Struct_2(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    var var_0 = func_6(func_5(-77725i, func_4(27969u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-579f, 1000f, 1143f, 587f), vec4<f32>(-1334f, -771f, 119f, -723f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1268f, -186f, 130f, 833f) - vec4<f32>(-325f, -1842f, -1000f, 528f)))), vec4<i32>(u_input.a, u_input.a, -13823i, reverseBits(u_input.a)), _wgslsmith_f_op_f32(func_1(countOneBits(vec3<u32>(58700u, 0u, 50897u))))), Struct_2(-828f)), 0u);
    global0 = array<vec3<i32>, 25>();
    let var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(countOneBits(min(vec2<i32>(u_input.a, 36352i), vec2<i32>(u_input.a, u_input.a)))) >> (abs(max(~vec2<u32>(33995u, 17108u), vec2<u32>(5325u, 326u))) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(3929i, 1004i)));
    let var_2 = _wgslsmith_clamp_vec2_i32(max(max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-40766i, u_input.a)) << (~vec2<u32>(26101u, 27445u) % vec2<u32>(32u)), -(~vec2<i32>(2147483647i, -30390i))), vec2<i32>(firstLeadingBit(1i) & _wgslsmith_add_i32(var_1, 0i), u_input.a)), _wgslsmith_add_vec2_i32(-(abs(vec2<i32>(-5624i, 0i)) & vec2<i32>(var_1, u_input.a)), vec2<i32>(min(reverseBits(var_1), 1i), -29003i)), min(firstTrailingBit(vec2<i32>(firstLeadingBit(u_input.a), abs(-8217i))), ~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -1i)), abs(vec2<i32>(u_input.a, var_1)))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(global1[_wgslsmith_index_u32(func_2().d, 13u)]), global1[_wgslsmith_index_u32(16232u, 13u)]), ~38523u, ~(~(~_wgslsmith_mod_u32(1u, 78800u))), ~(_wgslsmith_div_u32(firstTrailingBit(1u), ~0u) & ~49238u));
    var_0 = Struct_2(1727f);
    let var_4 = var_3.x;
    global0 = array<vec3<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(var_3.wyw), _wgslsmith_div_vec2_u32(~vec2<u32>(func_2().d, 15670u), countOneBits(vec2<u32>(1u, var_3.x) << (vec2<u32>(33212u, 15083u) % vec2<u32>(32u)))));
}

