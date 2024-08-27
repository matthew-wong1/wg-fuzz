struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(182f, -124f, 2388f));

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(292f, 782f, 1326f), vec3<f32>(1372f, 1000f, -1080f), vec3<f32>(-572f, 1493f, 1164f), vec3<f32>(-776f, -123f, 1187f), vec3<f32>(-595f, 1000f, 613f), vec3<f32>(269f, -196f, -1048f), vec3<f32>(-487f, -2445f, -591f), vec3<f32>(851f, -270f, 341f), vec3<f32>(440f, -808f, 864f), vec3<f32>(-376f, 111f, 785f), vec3<f32>(1101f, 204f, -874f), vec3<f32>(588f, 951f, 1077f), vec3<f32>(362f, -1105f, -1059f), vec3<f32>(-1647f, 777f, 781f), vec3<f32>(279f, -296f, 914f), vec3<f32>(-904f, 346f, 885f), vec3<f32>(-151f, -204f, -1475f), vec3<f32>(1869f, 517f, -1000f), vec3<f32>(-126f, -513f, -715f), vec3<f32>(-2081f, -1939f, 655f), vec3<f32>(323f, 602f, -842f), vec3<f32>(1440f, -321f, -108f), vec3<f32>(166f, -1266f, -108f), vec3<f32>(741f, 340f, 353f), vec3<f32>(-1000f, 1074f, 1011f), vec3<f32>(-359f, -2205f, -1000f), vec3<f32>(-607f, -2004f, -687f), vec3<f32>(-678f, -1191f, 483f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<f32>, 1>();
    var var_0 = arg_1;
    let var_1 = select(vec2<bool>(true, _wgslsmith_mult_u32(4294967295u << (arg_0 % 32u), 0u) < ~_wgslsmith_add_u32(arg_1.a, 7817u)), select(vec2<bool>(u_input.a.x > abs(0i), true), vec2<bool>(true, true), true), true);
    global1 = false;
    global0 = array<vec3<f32>, 1>();
    return ~_wgslsmith_clamp_u32(32927u, ~select(3346u, arg_0, var_1.x), abs(max(14690u, arg_0)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = arg_1;
    var var_0 = _wgslsmith_mod_u32(func_3(~1u, Struct_1(51533u)), ~(~4294967295u));
    global1 = arg_1;
    global2 = array<vec3<f32>, 28>();
    var var_1 = Struct_1(1u);
    return Struct_1(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, 68644u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(81548u, var_1.a) >> (vec2<u32>(var_1.a, 1u) % vec2<u32>(32u)), reverseBits(vec2<u32>(var_1.a, var_1.a))) % vec2<u32>(32u)), ~(vec2<u32>(var_1.a, var_1.a) | (vec2<u32>(4294967295u, var_1.a) << (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a, _wgslsmith_add_u32(76141u, 23152u), arg_3 >> (1u % 32u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_3, arg_3), vec3<u32>(85509u, 2684u, arg_3))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-834f)))), _wgslsmith_f_op_f32(-267f + -858f)));
    global0 = array<vec3<f32>, 1>();
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 249f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))), var_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(171f, 498f, 306f, var_1.x), vec4<f32>(var_1.x, -779f, var_1.x, var_1.x), vec4<bool>(true, false, true, true))) - _wgslsmith_div_vec4_f32(vec4<f32>(625f, var_1.x, var_1.x, -896f), vec4<f32>(var_1.x, 1000f, 1153f, -1278f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 461f, 334f, 526f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1803f, var_1.x, 1036f, var_1.x) * vec4<f32>(var_1.x, 502f, -2141f, -2097f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 581f, var_1.x))))))));
    global2 = array<vec3<f32>, 28>();
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    global2 = array<vec3<f32>, 28>();
    let var_0 = ~vec4<i32>(~(-1i), _wgslsmith_sub_i32(u_input.a.x ^ _wgslsmith_mult_i32(0i, -3603i), 0i), func_4(firstLeadingBit(-5420i), func_2(_wgslsmith_f_op_f32(sign(-1963f)), all(arg_2.xy)), Struct_1(24803u ^ arg_1), ~(~1u)), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-632f, 219f), vec2<f32>(-199f, -1286f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 900f))))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, 106f, -484f)), vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), 1855f, -1630f, arg_0))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2376f, _wgslsmith_f_op_f32(arg_0 + -671f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-397f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(1000f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_div_f32(arg_0, var_1.x), true))), -804f));
    global0 = array<vec3<f32>, 1>();
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> bool {
    var var_0 = vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x);
    let var_1 = func_2(_wgslsmith_f_op_f32(min(-869f, 809f)), true);
    var var_2 = -(i32(-1i) * -var_0.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2093f - arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(697f)), _wgslsmith_f_op_f32(-arg_2.x))) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 1u, arg_1, arg_0), ~(~vec4<u32>(arg_0, 22310u, var_1.a, 4294967295u))), 1u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 428f) * global2[_wgslsmith_index_u32(7160u, 28u)])))))));
    var var_4 = func_2(_wgslsmith_f_op_f32(-333f * 278f), !any(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true)));
    return _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))), all(vec4<bool>(true, true, true, true)))) != -546f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(1i != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 16592i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(18270i, u_input.a.x, u_input.a.x, 17771i))), func_5(func_1(1837f, ~(~30612u), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true)), ~_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(1u, 70758u, 66703u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(475f, -441f, 186f)))))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-136f, -1729f)), _wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(ceil(1000f))))) - vec2<f32>(1f, 1f));
    global1 = false;
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 36954u), vec4<u32>(21415u, 4294967295u, 108754u, 29874u))) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(16997u, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(4294967295u, 0u, 9590u, 49883u), min(vec4<u32>(56234u, 4294967295u, 64275u, 139077u), vec4<u32>(4294967295u, 5023u, 4294967295u, 1u))) & ~(~vec4<u32>(69569u, 0u, 56732u, 1u))) % vec4<u32>(32u));
    let var_3 = ~(-33762i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(var_3, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -34660i), vec3<i32>(var_3, -23004i, 0i)), ~vec3<i32>(var_3, u_input.a.x, -14734i)), var_3)), var_2.zx, -2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-491f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * -832f), _wgslsmith_f_op_f32(f32(-1f) * -342f)))))));
}

