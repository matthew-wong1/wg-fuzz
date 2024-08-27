struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(1i, 0i), vec2<i32>(-30783i, i32(-2147483648)), vec2<i32>(-6859i, -8344i), vec2<i32>(30920i, 88i), vec2<i32>(8732i, -14175i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(5433i, -1i), vec2<i32>(2147483647i, -14892i), vec2<i32>(28060i, 29933i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 2904i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 52547i), vec2<i32>(i32(-2147483648), 22064i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -45339i), vec2<i32>(0i, 1i), vec2<i32>(1i, -28951i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -14280i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-3242i, -80786i), vec2<i32>(0i, 53535i), vec2<i32>(1i, 1i));

var<private> global2: array<i32, 3> = array<i32, 3>(6643i, 53628i, -470i);

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(24564i, 34625i, 2147483647i, -1i), vec4<i32>(-1i, i32(-2147483648), 39212i, 59741i), vec4<i32>(i32(-2147483648), i32(-2147483648), -23013i, 2147483647i), vec4<i32>(-22490i, 1i, 27382i, 0i), vec4<i32>(5412i, -18461i, 33978i, 1i), vec4<i32>(8531i, -1i, 69634i, 1i), vec4<i32>(2147483647i, -13001i, 20150i, 1i), vec4<i32>(1i, 55503i, i32(-2147483648), 0i), vec4<i32>(-1250i, 17557i, 11759i, -1i), vec4<i32>(1i, 28805i, -24193i, -1i), vec4<i32>(-1i, -43108i, 0i, 4509i), vec4<i32>(0i, 51978i, i32(-2147483648), 0i), vec4<i32>(-28251i, 1i, 1i, 13064i), vec4<i32>(-29023i, -9296i, i32(-2147483648), 19126i), vec4<i32>(34055i, -4991i, -25925i, 13793i), vec4<i32>(-12857i, 10296i, 1i, 43176i), vec4<i32>(-12539i, 53790i, -18528i, 2147483647i), vec4<i32>(0i, -1i, 848i, 20980i), vec4<i32>(-9044i, -65986i, -1i, -33460i), vec4<i32>(-11760i, 28697i, 2147483647i, -1i), vec4<i32>(-69584i, 0i, -1i, 0i), vec4<i32>(-1i, 32663i, -37012i, -39825i), vec4<i32>(i32(-2147483648), 2147483647i, -11204i, 1i), vec4<i32>(7199i, -37629i, 1i, 1i), vec4<i32>(-1i, -1i, 22855i, 0i), vec4<i32>(35194i, -19958i, 41884i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -43833i, -10368i), vec4<i32>(-12767i, 44630i, -32753i, i32(-2147483648)), vec4<i32>(-8972i, i32(-2147483648), -62993i, -1i), vec4<i32>(-16100i, 21875i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = -9578i;
    var var_1 = vec3<f32>(-3098f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-830f)) + 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-339f))))))));
    global0 = array<vec4<i32>, 11>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1003f, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, -916f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, -1180f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(872f, 201f, 865f) + vec3<f32>(var_1.x, var_1.x, var_1.x)), select(false, true, false)))), Struct_1(any(vec4<bool>(true, false, true, true))), true, Struct_1(any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    var var_3 = firstTrailingBit(~(firstTrailingBit(min(vec4<u32>(11935u, u_input.b, 90548u, 1u), vec4<u32>(47453u, u_input.b, u_input.a.x, u_input.b))) << (vec4<u32>(13532u, u_input.a.x, u_input.a.x, 39633u) % vec4<u32>(32u))));
    return vec4<bool>(var_2.a.e.x == all(!select(vec2<bool>(true, true), var_2.a.e, var_2.a.e)), var_2.a.d.a, all(vec4<bool>(var_2.a.d.a, 21323i < ~var_0, !all(var_2.a.e), false)), !var_2.a.c);
}

fn func_2() -> vec4<bool> {
    let var_0 = select(select(vec4<bool>(firstTrailingBit(49266u) < 4294967295u, all(func_3()), all(vec2<bool>(true, false)) == (25353i < global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)] <= global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true, true, false), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true)), select(vec4<bool>(_wgslsmith_f_op_f32(-1334f * -1938f) != _wgslsmith_f_op_f32(sign(-270f)), all(vec2<bool>(true, true)), false, true), !vec4<bool>(true, func_3().x, any(vec2<bool>(true, false)), true), vec4<bool>(true, false, countOneBits(global2[_wgslsmith_index_u32(u_input.b, 3u)]) < ~global2[_wgslsmith_index_u32(1651u, 3u)], func_3().x)), false);
    let var_1 = _wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a), countOneBits(vec2<u32>(1u, 0u))), 27u)], vec2<i32>(13851i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 3u)], 0i))) & vec2<i32>(1i, _wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(9140u, 3u)] << ((38586u ^ u_input.b) % 32u), global2[_wgslsmith_index_u32(3143u, 3u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 2839u), 3u)] | _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(u_input.b, 3u)])));
    global2 = array<i32, 3>();
    var var_2 = -19447i;
    global0 = array<vec4<i32>, 11>();
    return vec4<bool>(!any(!vec2<bool>(var_0.x, true)), true, !var_0.x, true);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = select(vec3<bool>(any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), func_2())), any(vec4<bool>(true, true, true, true)), func_2().x), vec3<bool>(func_3().x, !any(vec2<bool>(true, true)), true), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(var_1.x * arg_0.x)))), arg_0.zxw);
    var var_3 = true;
    global2 = array<i32, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 30>();
    global2 = array<i32, 3>();
    let var_0 = !(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)) & (_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1091f, 183f, 550f, 1203f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1034f)) - -200f)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1009f, 155f, -1004f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-501f, -721f, 666f)))) + vec3<f32>(_wgslsmith_f_op_f32(1425f * -1547f), 273f, 1669f)), Struct_1(true), var_0, Struct_1(false), vec2<bool>(true, true)));
    global2 = array<i32, 3>();
    let var_2 = var_1;
    let var_3 = _wgslsmith_clamp_i32(abs(-firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 3u)])), _wgslsmith_div_i32(19110i, global2[_wgslsmith_index_u32(~u_input.a.x, 3u)]), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 8594u, 28442u), ~vec3<u32>(u_input.b, 7420u, u_input.a.x)), (1u << (u_input.b % 32u)) & (u_input.a.x >> (15876u % 32u)), var_1.a.b.a), 11u)], vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(~41646u | ~u_input.b, 3u)], _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(84415u, u_input.b), 3u)], -global2[_wgslsmith_index_u32(u_input.b, 3u)]), global2[_wgslsmith_index_u32(u_input.b, 3u)])));
    global2 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(37571u, u_input.a.x, u_input.b, 4294967295u) | vec4<u32>(0u, u_input.b, 1u, 0u)), vec4<u32>(_wgslsmith_clamp_u32(37943u, u_input.a.x, u_input.a.x), ~u_input.a.x, abs(6097u), ~u_input.a.x)), max(select(reverseBits(0u), u_input.b, true), u_input.b), true), ~vec2<u32>(u_input.a.x, 54954u));
}

