struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: vec3<i32>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<i32>, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global4 = array<vec3<i32>, 22>();
    global3 = arg_0;
    var var_0 = Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(276f, _wgslsmith_f_op_f32(min(arg_0.b.x, global3.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(global3.b.x, arg_0.b.x)), global3.b)), 12341i);
    let var_1 = Struct_4(1u >> (0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + arg_0.b.x), -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(global3.a.a.yyw, vec3<i32>(1i, 1i, -1i), arg_0.a.a.www)), min(vec3<i32>(3208i, -2147483647i, arg_0.c), -vec3<i32>(global2.x, -12019i, u_input.b.x))), 85199u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 699f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(var_0.b.x, global3.b.x), false)))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f), 1945f))), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(-global3.b.x));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))), var_0.b.x)));
}

fn func_4(arg_0: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x), global3.b.x)), false));
    let var_1 = -_wgslsmith_mult_vec4_i32(global3.a.a, vec4<i32>(1i, -(1i << (arg_0.a % 32u)), global3.a.a.x, _wgslsmith_div_i32(-32583i, abs(arg_0.c.x))));
    global1 = array<vec3<bool>, 23>();
    global3 = Struct_2(global3.a, vec4<f32>(-425f, _wgslsmith_f_op_f32(-2087f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.b.x)), _wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_clamp_i32(u_input.b.x, arg_0.c.x, reverseBits(47432i)));
    global1 = array<vec3<bool>, 23>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(global3.a, global3.b, -23919i))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.e, vec2<f32>(var_0, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.e)), vec2<f32>(arg_0.e.x, -1693f)) - arg_0.e)))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(4294967295u << (u_input.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_f_op_f32(select(892f, global3.b.x, true))), -u_input.b, arg_0.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, global3.a.a.x, u_input.b.x, global3.a.a.x)), global3.b, -9872i))))));
    global2 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global3.a.a.xxw, vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(1u, 22u)], global3.a.a.yxy)), ~(u_input.b.x << (4294967295u % 32u)), -firstLeadingBit(2086i)), global4[_wgslsmith_index_u32(u_input.a, 22u)]), ~firstTrailingBit(vec3<i32>(global2.x & -1i, ~(-2147483647i), u_input.b.x)));
    var var_1 = any(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, false), false));
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_mult_i32(-32256i, global3.a.a.x));
    global3 = Struct_2(Struct_1(vec4<i32>(1i, _wgslsmith_mod_i32(u_input.b.x << (0u % 32u), u_input.b.x), ~global3.c, i32(-1i) * -1i)), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 1240f, true)) * -492f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-396f, -766f)))) * -537f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1648f, _wgslsmith_f_op_f32(trunc(var_0.x)))))), u_input.b.x);
    return select(~_wgslsmith_mult_u32(max(u_input.a & 23331u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, u_input.a, u_input.a), vec4<u32>(40343u, u_input.a, arg_0.x, u_input.a))), ~2359u), 6630u, all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(all(global1[_wgslsmith_index_u32(1u, 23u)]), var_0.x == global3.b.x, any(vec4<bool>(false, false, false, true)), false), vec4<bool>(false, true, true, any(vec4<bool>(true, false, false, false))))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> u32 {
    global0 = !all(select(!vec3<bool>(false, arg_3, false), vec3<bool>(any(vec2<bool>(false, true)), arg_3, any(vec3<bool>(false, true, false))), vec3<bool>(global3.a.a.x <= global3.a.a.x, true, true)));
    global1 = array<vec3<bool>, 23>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0) == global3.b.x;
    global0 = arg_3;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(func_2(~max(vec3<u32>(u_input.a, arg_2, arg_2), vec3<u32>(3661u, 0u, 0u))), 42529u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, 0u)), vec2<u32>(~u_input.a, reverseBits(u_input.a))), abs(~(~vec2<u32>(u_input.a, 48564u)))));
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec2<u32> {
    global2 = global3.a.a.yzw;
    var var_0 = Struct_4(u_input.a, _wgslsmith_f_op_f32(747f * 1f), ~arg_0.a.yzz, reverseBits(arg_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-749f, global3.b.x), global3.b.xy, any(vec2<bool>(true, true))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1085f, -345f, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -241f), var_0.e.x)), false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(trunc(-1370f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(-var_0.e.x), true))));
    let var_2 = any(!vec2<bool>(!all(vec2<bool>(true, true)), true));
    var var_3 = firstTrailingBit(~_wgslsmith_dot_vec2_i32(~global3.a.a.wx, vec2<i32>(_wgslsmith_sub_i32(2147483647i, arg_0.a.x), i32(-1i) * -16478i)));
    return vec2<u32>(arg_1, var_0.d | 15762u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 22>();
    var var_0 = Struct_4(~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.x * 377f)))), global3.b.x), ~vec3<i32>(-1i, -u_input.b.x, global2.x), 1u, global3.b.zw);
    var var_1 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.a, u_input.a), vec3<u32>(70399u, var_0.a, 0u)), 4294967295u)), func_5(global3.a, _wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(1u, 11052u, 29937u)), _wgslsmith_mult_u32(countOneBits(89914u), 0u)), abs(vec4<u32>(var_0.a, u_input.a, u_input.a, func_1(-1690f, vec3<f32>(var_0.b, global3.b.x, var_0.b), var_0.a, true))), global3.b));
    let var_2 = global3.a;
    let var_3 = _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(~var_1.x ^ 1u, var_1.x, 59995u, var_0.d)), ~_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(9036u, var_0.d, 1u, 0u), vec4<u32>(u_input.a, var_1.x, 1u, var_1.x))), ~vec4<u32>(var_0.d, 22122u, var_0.d, 0u)));
    let var_4 = vec2<u32>(~(~var_1.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_0.d, var_1.x) & vec2<u32>(u_input.a, 1u)) % 32u)), var_3.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(var_3), ~vec4<u32>(0u, 29111u, var_3.x, var_3.x)), ~(~vec4<u32>(1u, 69099u, 6121u, 4294967295u))) % 32u));
    let var_5 = Struct_4(min(0u, 4294967295u), -1000f, vec3<i32>(2147483647i, 35287i, _wgslsmith_clamp_i32(~2147483647i, -u_input.b.x, var_2.a.x & -14991i)) & var_2.a.zxx, 27764u | ~u_input.a, _wgslsmith_f_op_vec2_f32(-global3.b.xx));
    let var_6 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, _wgslsmith_f_op_f32(select(var_0.b, -165f, false)), _wgslsmith_f_op_f32(step(1000f, -1182f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, global3.b.x, -246f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.b, global3.b.x, 375f), global3.b.wzy, vec3<bool>(true, false, false))) + vec3<f32>(_wgslsmith_f_op_f32(242f + -715f), _wgslsmith_f_op_f32(max(1742f, var_0.b)), _wgslsmith_div_f32(2113f, 1862f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(min(_wgslsmith_sub_i32(18983i, var_0.c.x), var_0.c.x), _wgslsmith_clamp_i32(2147483647i, global2.x, global2.x) << (firstLeadingBit(42220u) % 32u)), 1i, 0i));
}

