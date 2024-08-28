struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1 = Struct_1(6684u, vec2<f32>(-701f, -1984f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global1 = Struct_1(21135u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 560f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -361f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(floor(global1.b.x))), _wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(389f)))), global1.b.x)));
    var var_1 = !(!(!(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, false, false, arg_0), arg_0))));
    global1 = global0[_wgslsmith_index_u32(global1.a << (~51920u % 32u), 20u)];
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - _wgslsmith_div_f32(global1.b.x, var_0.x)) - global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2282f))));
    return max(~(~min(_wgslsmith_div_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(47489u, 1u)), vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(global1.a, global1.a) % vec2<u32>(32u)))), vec2<u32>(39064u, global1.a));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(~(~85453u), global1.b);
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(264f, global1.b.x)) - var_0.b))));
    let var_2 = u_input.a ^ u_input.a;
    let var_3 = vec3<i32>(-83755i, 1i, var_2);
    var var_4 = global0[_wgslsmith_index_u32(var_0.a, 20u)];
    return ~(~max(func_3(all(vec3<bool>(false, false, true))), vec2<u32>(42304u & var_4.a, max(var_4.a, global1.a))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(global1.a, 20u)];
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = func_4(true, vec3<u32>(4294967295u, abs(abs(12236u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global1.a, 0u)) % 32u)), min(global1.a, reverseBits(arg_2.a << (83701u % 32u)))), true, _wgslsmith_add_vec2_u32(~(~abs(vec2<u32>(36864u, 17450u))), func_2()));
    var var_0 = -(~vec3<i32>(countOneBits(u_input.a ^ u_input.a), _wgslsmith_add_i32(1i, ~arg_1), ~(u_input.a << (0u % 32u))));
    var var_1 = func_4(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true)), vec3<u32>(36895u, arg_2.a, firstLeadingBit(arg_2.a)), true, ~abs(vec2<u32>(func_2().x, max(0u, global1.a))));
    var var_2 = func_4(!((global1.a != global1.a) && all(vec3<bool>(true, true, true))), ~(~(~vec3<u32>(global1.a, 15830u, global1.a)) >> (~vec3<u32>(arg_2.a, arg_0, arg_2.a) % vec3<u32>(32u))), !(!all(vec2<bool>(true, true))), vec2<u32>(func_2().x, abs(var_1.a >> (var_1.a % 32u))));
    var_0 = vec3<i32>(-16711i, u_input.a, -(~reverseBits(-var_0.x)));
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = func_1(1u, ~2147483647i, func_1(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, var_0.a), _wgslsmith_add_u32(28030u, var_0.a)) ^ global1.a, -24634i, Struct_1(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(1649f * 306f), 2114f))));
    var_1 = func_4(!(u_input.a > -6397i), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.a, 17526u, var_0.a), vec3<u32>(var_0.a, 53669u, 60397u)) | vec3<u32>(~4294967295u, global1.a, _wgslsmith_div_u32(4294967295u, global1.a)), vec3<u32>(abs(~var_1.a), select(arg_2.a, 0u, false) | (1u & arg_2.a), abs(arg_2.a))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), 1u <= global1.a)), vec2<u32>(global1.a, global1.a));
    let var_2 = select(max(~(u_input.a ^ u_input.a), 1i & _wgslsmith_mod_i32(0i, u_input.a)) >> ((~(~var_1.a) ^ 28871u) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -62387i), vec3<i32>(u_input.a, u_input.a, u_input.a)), firstLeadingBit(u_input.a), -18859i, 1881i), vec4<i32>(17998i & u_input.a, countOneBits(u_input.a), u_input.a ^ u_input.a, abs(14243i))), ~vec4<i32>(min(u_input.a, 2147483647i), i32(-1i) * -35234i, max(108319i, u_input.a), u_input.a)), all(vec3<bool>(true, all(vec2<bool>(false, false)), false)));
    let var_3 = var_0.a;
    return func_4(!(firstLeadingBit(_wgslsmith_div_u32(var_0.a, global1.a)) > 0u), vec3<u32>(arg_2.a, 82223u, ~reverseBits(37409u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -704f)))) >= var_0.b.x, _wgslsmith_mult_vec2_u32(func_2(), vec2<u32>(38527u, abs(func_3(true).x))));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32((-46921i ^ u_input.a) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 15551i, u_input.a, u_input.a), vec4<i32>(u_input.a, 45840i, u_input.a, u_input.a)), _wgslsmith_sub_i32(u_input.a >> (global1.a % 32u), 0i)), -(~(-18450i)) & (_wgslsmith_mult_i32(u_input.a, -1i) & (u_input.a ^ u_input.a))) < firstLeadingBit(-62430i);
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_1(~global1.a, global1.b);
    var_0 = ~1u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(24854u, global1.a, 0u, 30012u) << (abs(vec4<u32>(0u, 1u, global1.a, global1.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.a, 89811u, 4294967295u), ~vec4<u32>(0u, global1.a, global1.a, global1.a))), global1.b);
    let var_1 = -_wgslsmith_clamp_i32(_wgslsmith_div_i32(-(u_input.a & u_input.a), 47868i), u_input.a, func_6(vec4<bool>(select(false, false, true), true, true, true), func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.x, var_0.b.x, 1888f))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, var_0.b.x, var_0.b.x, global1.b.x), vec4<f32>(-505f, global1.b.x, 1000f, var_0.b.x)), func_1(var_0.a, 10263i, global0[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x)))));
    let var_2 = all(vec4<bool>(1u >= (global1.a & 1u), !(!any(vec3<bool>(true, false, true))), !(!select(false, true, true)), true));
    let var_3 = vec3<u32>(var_0.a, _wgslsmith_sub_u32(0u, 13082u & ~global1.a), global1.a);
    var var_4 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, var_1, var_1), vec3<i32>(-2894i, var_1, -417i) << (vec3<u32>(18104u, 23792u, 0u) % vec3<u32>(32u))) << (var_3 % vec3<u32>(32u)), vec3<i32>(-1i) * -reverseBits(vec3<i32>(-14531i, 1i, var_1)));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 4294967295u), var_3.yz), -2147483647i, global0[_wgslsmith_index_u32(global1.a, 20u)]).b.x, -672f, 247f)), vec4<f32>(616f, var_0.b.x, _wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(round(-1094f))), global0[_wgslsmith_index_u32(4294967295u, 20u)], func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-313f, -502f, global1.b.x)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1468f, -269f, -198f) * vec4<f32>(1284f, var_0.b.x, global1.b.x, -541f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, 465f, 345f, var_0.b.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, var_0.b.x, -440f, -223f), vec4<f32>(global1.b.x, -938f, var_0.b.x, var_0.b.x))))), global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -497f))).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, 2284f, global1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -364f, 845f) * vec3<f32>(var_0.b.x, global1.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, global1.b.x, var_0.b.x) * vec3<f32>(global1.b.x, var_0.b.x, 341f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -224f, 1000f))), true)), var_0.b.x, 36994u, var_3, ~4294967295u);
}

