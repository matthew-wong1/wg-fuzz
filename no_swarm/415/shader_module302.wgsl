struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<i32, 17> = array<i32, 17>(-9798i, 2147483647i, 21177i, i32(-2147483648), 2147483647i, 1i, 1i, -60822i, -5745i, 11261i, i32(-2147483648), 1i, -20487i, -1i, -17383i, -1i, 27488i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.b.xy, u_input.b.xy));
    let var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(3683f)))));
    let var_2 = -566f;
    global1 = array<i32, 17>();
    return var_2;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1634f))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 42621u, _wgslsmith_sub_u32(arg_0.x, 1u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(93999u, 4294967295u, arg_0.x), vec3<u32>(36059u, arg_0.x, 1u)))), vec2<bool>(true, false), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 2147483647i), u_input.b), 3144i, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(global1[_wgslsmith_index_u32(6227u, 17u)], -26926i)), ~(-38416i))), arg_0.x), true);
    let var_1 = !(!vec4<bool>(var_0.b.b.x, true, !(!var_0.b.b.x), all(vec3<bool>(var_0.b.b.x, false, true))));
    let var_2 = var_0.b.c.xzy;
    global1 = array<i32, 17>();
    let var_3 = 40346i;
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32) -> bool {
    global0 = array<u32, 23>();
    var var_0 = Struct_1(4294967295u, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, arg_1))), min(~countOneBits(vec4<i32>(u_input.e, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], 17u)], -1i, 22226i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(27955i, -2147483647i, 1255i, -3268i), vec4<i32>(4122i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 8201i)) & -reverseBits(vec4<i32>(-1i, 1i, 0i, u_input.e))), max(12889u, 621u));
    var var_1 = arg_2;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-243f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, arg_2, 391f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1490f, arg_2) + vec3<f32>(arg_2, 1255f, arg_2))))), Struct_1(select(abs(37681u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), ~u_input.c), true), vec2<bool>(_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(sign(arg_0)), var_0.b.x), vec4<i32>(u_input.b.x, ~u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)) % 32u), -11171i, abs(max(global1[_wgslsmith_index_u32(19339u, 17u)], -22581i))), ~_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(6086u, 23u)], ~0u)), all(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, arg_1, false, true), vec4<bool>(true, var_0.b.x, true, true)), !vec4<bool>(false, var_0.b.x, arg_1, true))));
    var var_3 = false;
    return true;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    var var_0 = 3575u;
    var var_1 = select(!vec3<bool>(arg_3.b.x, any(select(vec3<bool>(arg_3.b.x, false, true), vec3<bool>(false, true, arg_3.b.x), vec3<bool>(arg_3.b.x, false, arg_2))), arg_3.b.x), vec3<bool>(true, arg_2, !(!arg_2 | !arg_3.b.x)), !(!(!(75243u >= arg_0))));
    var_1 = vec3<bool>(false, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec3<u32>(22171u, u_input.c.x, arg_3.d)))), !(!any(vec4<bool>(var_1.x, var_1.x, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2791f)), 131f)), any(select(vec4<bool>(true, func_4(1054f, true, -1898f), !arg_2, !var_1.x), select(vec4<bool>(false, var_1.x, false, false), !vec4<bool>(true, false, false, arg_3.b.x), true), arg_2)));
    var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(26798u, _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 23u)])), ~(~(~arg_3.a))), 23u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(280f)));
    return Struct_4(min(-firstLeadingBit(1i), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u, -2147483647i, _wgslsmith_f_op_f32(select(976f, _wgslsmith_f_op_f32(floor(-526f)), true)) > -1194f, Struct_1(~(~(~1u)), vec2<bool>(!all(vec3<bool>(false, false, true)), !any(vec3<bool>(true, false, false))), ~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(77614i, 59222i, u_input.b.x, 2147483647i), vec4<i32>(25807i, u_input.d, u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 17u)]))), u_input.c.x));
    var var_1 = Struct_5(Struct_1(u_input.c.x, select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_add_u32(u_input.c.x, 27004u) != global0[_wgslsmith_index_u32(u_input.c.x >> (global0[_wgslsmith_index_u32(202u, 23u)] % 32u), 23u)]), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(-1431i, -1i, -1i, var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, var_0.a, var_0.a, -1i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 0i, u_input.e, 2147483647i)))), global0[_wgslsmith_index_u32(~0u, 23u)] | ~_wgslsmith_dot_vec4_u32(vec4<u32>(46247u, 76261u, 71665u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 49371u))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.a.a, var_1.a.d), 40552u)) >> (~firstLeadingBit(~68506u) % 32u), !select(vec2<bool>(var_1.a.b.x, var_1.a.b.x | var_1.a.b.x), var_1.a.b, var_1.a.b), -_wgslsmith_clamp_vec4_i32(var_1.a.c, vec4<i32>(-23924i, ~u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 17u)], select(0i, -9232i, var_1.a.b.x)), var_1.a.c), ~_wgslsmith_sub_u32(min(_wgslsmith_div_u32(4294967295u, 1u), ~var_1.a.a), ~_wgslsmith_mod_u32(4294967295u, 4294967295u)));
    var_1 = Struct_5(var_2);
    let var_3 = select(!vec3<bool>(false, !any(var_1.a.b), true), !select(vec3<bool>(!var_2.b.x, true, true), vec3<bool>(true, var_2.b.x, false), vec3<bool>(!var_1.a.b.x, var_2.b.x, !var_2.b.x)), vec3<bool>(var_2.b.x, !var_1.a.b.x, false));
    var var_4 = func_1(4301u, ~19237i, var_3.x, var_1.a);
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, -2499f, -849f) + vec3<f32>(489f, -906f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(618f, -203f, 803f) - vec3<f32>(-148f, -596f, -942f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-740f, -303f, 197f), vec3<f32>(1039f, -1526f, -1127f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(363f, -1094f, -758f)))))))), var_1.a, var_3.x);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_5.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(var_5.b.a, 23u)]))) + _wgslsmith_f_op_f32(-var_5.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_5.a.zz, vec2<f32>(var_5.a.x, -896f), !select(vec2<bool>(true, var_2.b.x), var_5.b.b, vec2<bool>(var_3.x, var_3.x)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_5.a.x + var_5.a.x))), 422f)), vec4<u32>(_wgslsmith_add_u32(~1927u, var_2.a), firstTrailingBit(var_5.b.a), firstTrailingBit(73870u), 26411u), 16564u, vec3<i32>(abs(-var_1.a.c.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(-28598i, -27289i, 0i, 10102i)), ~min(vec4<i32>(var_4.a, 2147483647i, u_input.a.x, -19413i), var_2.c)), max(-(-65574i ^ u_input.e), -27012i)));
}

