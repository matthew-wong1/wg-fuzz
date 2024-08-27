struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-152f, -1000f, 1168f), vec3<f32>(-1806f, -2487f, 1236f), vec3<f32>(-1000f, 1261f, 1259f), vec3<f32>(-602f, 298f, -529f), vec3<f32>(-1000f, 700f, 667f), vec3<f32>(-1546f, -153f, 1332f), vec3<f32>(-1676f, -836f, 1348f), vec3<f32>(1370f, -131f, -2167f), vec3<f32>(-1271f, -159f, 1037f), vec3<f32>(306f, 1323f, 370f), vec3<f32>(-122f, 198f, -372f), vec3<f32>(-1273f, 1000f, 1250f), vec3<f32>(592f, 457f, -780f), vec3<f32>(-631f, 214f, 398f));

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~var_0.a, 6u)]);
    var_0 = Struct_1(var_1.a.a, var_0.b, var_0.c);
    var_1 = Struct_2(Struct_1(select(_wgslsmith_div_u32(var_1.a.a | 0u, var_0.a), var_0.a, var_1.a.b.x), !(!vec2<bool>(var_1.a.b.x, var_0.c)), var_1.a.a > ~40947u));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(558f, _wgslsmith_f_op_f32(324f + -1087f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-204f - -1494f))), _wgslsmith_f_op_f32(f32(-1f) * -792f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1967f, 818f, -201f, -2343f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1578f, -1071f, 2072f, 958f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 127f, 454f, -209f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2096f, -2062f, -2120f, 753f), vec4<f32>(-1729f, -655f, 908f, -710f), vec4<bool>(var_0.b.x, true, var_0.c, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-187f, 250f, 426f, -584f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1579f, -218f, -235f, -160f)))))))));
    return var_1.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = Struct_1(arg_0.a, select(!(!select(arg_0.b, arg_0.b, arg_0.b)), arg_0.b, !(!(!arg_0.b))), arg_0.b.x);
    var var_1 = Struct_2(Struct_1(~63206u, arg_0.b, reverseBits(func_3()) == ~(31064u >> (var_0.a % 32u))));
    var var_2 = min(~(~vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(5385u, 43593u, 66372u), vec3<u32>(4294967295u, var_1.a.a, 68746u)))), vec2<u32>(arg_0.a, ~func_3()));
    global1 = array<Struct_1, 6>();
    global0 = array<vec3<f32>, 14>();
    return any(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-755f, 522f, false)) * _wgslsmith_div_f32(517f, 409f)) <= -1330f, !arg_0.c, all(vec3<bool>(var_0.c, false, true)) | true));
}

fn func_1() -> f32 {
    let var_0 = all(select(select(vec4<bool>(true, false, true, select(true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, u_input.c.x < u_input.c.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(func_2(global1[_wgslsmith_index_u32(1u, 6u)], true, u_input.b, u_input.d), all(vec2<bool>(false, false)), true, select(false, true, true))), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(15185u, 4294967295u, 24499u, 19944u), vec4<u32>(1u, 0u, 4294967295u, 25119u), var_0), abs(vec4<u32>(1u, 10654u, 4294967295u, 23344u))), _wgslsmith_dot_vec3_u32(vec3<u32>(6874u, 0u, 39154u), vec3<u32>(33008u, 9553u, 0u)) & 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 31949u), 1u, func_3()), reverseBits(53684u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, _wgslsmith_mult_u32(56273u, 59116u), 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~(~firstLeadingBit(vec4<u32>(33903u, 4294967295u, 16911u, 43275u)))) << (min(vec4<u32>(1u, firstLeadingBit(_wgslsmith_mod_u32(66730u, 108133u)), 43092u, abs(~1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(98537u, 1989u, 7547u), abs(vec3<u32>(40527u, 31626u, 34286u))), firstLeadingBit(1u), ~func_3(), 18531u)) % vec4<u32>(32u));
    var var_2 = vec2<i32>(~u_input.c.x, firstLeadingBit(_wgslsmith_clamp_i32(-8979i, select(u_input.a, -99333i, var_0), u_input.b)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(938f))))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-270f - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -2403f)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(countOneBits(~(~u_input.a)) & -_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, u_input.a, -18207i, u_input.b), u_input.c), abs(vec4<i32>(u_input.a, 25366i, u_input.a, u_input.b))), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(251f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(662f, _wgslsmith_f_op_f32(-515f * -196f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wyx, 4294967295u, u_input.c.x, vec3<u32>(1u, 1u, 1u));
}

