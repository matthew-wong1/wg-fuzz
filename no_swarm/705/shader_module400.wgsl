struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(673f, -1245f, 824f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = !all(select(vec3<bool>(arg_0, arg_0 && true, any(vec2<bool>(true, arg_0))), !vec3<bool>(false, arg_0, arg_0), all(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, true, true, arg_0)))));
    global2 = vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(abs(980f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + -214f), global2.x);
    var var_1 = Struct_1(vec4<i32>(1i, i32(-1i) * -_wgslsmith_div_i32(u_input.b.x, 2147483647i), global1.d.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global1.b.c.x), global1.d.zy) << (5237u % 32u))), u_input.d, global1.b.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.b.c.yw, vec2<i32>(u_input.b.x, u_input.c.x)) ^ -global1.a.d, countOneBits(abs(0i)), _wgslsmith_mod_i32(u_input.c.x ^ global1.d.x, 1i)) >> (~14553u % 32u));
    let var_2 = Struct_3(Struct_1(vec4<i32>(u_input.c.x, 1i, select(i32(-1i) * -2147483647i, 15385i, any(vec4<bool>(arg_0, arg_0, true, arg_0))), -_wgslsmith_dot_vec2_i32(var_1.c.xy, vec2<i32>(global1.d.x, u_input.b.x))), global1.a.b, -vec4<i32>(-1159i, u_input.b.x, ~(-2147483647i), 51221i), 2147483647i), reverseBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, var_1.b, var_1.b, global1.a.b) << (vec4<u32>(15854u, 4294967295u, var_1.b, 26931u) % vec4<u32>(32u))), ~vec4<u32>(33165u, global1.a.b, 0u, 4516u) << ((vec4<u32>(1u, 4294967295u, global1.b.b, 1u) >> (vec4<u32>(var_1.b, u_input.a.x, 46609u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(0u, 0u, ~var_1.b, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -187f) - vec3<f32>(global2.x, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1172f, 398f, global2.x), vec3<f32>(-522f, 322f, global2.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1793f, 468f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(753f, global2.x, global2.x) + vec3<f32>(-1184f, -263f, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -991f, global2.x), vec3<f32>(global2.x, global2.x, -1462f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))))), global1.a, Struct_2(Struct_1(vec4<i32>(-44437i, _wgslsmith_mod_i32(u_input.c.x, u_input.b.x), 0i, 3750i), ~(~var_1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-9699i, var_1.c.x, u_input.c.x, u_input.c.x), -vec4<i32>(-4946i, 0i, 0i, 847i)), -18975i), global1.b, u_input.d, global1.d));
    var_1 = global1.a;
    return reverseBits(select(countOneBits(-(~vec4<i32>(-51008i, var_2.a.a.x, -1i, 0i))), vec4<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -22698i), vec2<i32>(-3065i, -47637i)), i32(-1i) * -1i, -global1.d.x) ^ u_input.c, all(select(!vec4<bool>(true, arg_0, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, true, arg_0, false))))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = global1.b;
    global0 = array<vec2<bool>, 27>();
    var var_1 = Struct_3(Struct_1(max(~func_3(false), var_0.a), 47885u, global1.a.a, ~(max(-73626i, u_input.b.x) << (var_0.b % 32u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 1u, var_0.b), ~vec4<u32>(37864u, 62471u, 15897u, global1.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-541f, 1466f, -854f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -813f, -1690f) * vec3<f32>(global2.x, global2.x, global2.x))))), global1.a, Struct_2(Struct_1(abs(vec4<i32>(-38028i, 0i, u_input.b.x, u_input.c.x)), _wgslsmith_sub_u32(u_input.a.x, 39013u) | 67278u, reverseBits(u_input.c), _wgslsmith_mult_i32(1i, -1i >> (global1.b.b % 32u))), Struct_1(u_input.b, ~(~52881u), var_0.c, u_input.b.x), ~(~(var_0.b << (1u % 32u))), _wgslsmith_mult_vec3_i32(global1.d, vec3<i32>(-41538i, ~0i, _wgslsmith_dot_vec4_i32(var_0.c, global1.a.a)))));
    let var_2 = Struct_2(Struct_1(-var_1.d.a, ~0u, ~vec4<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.e.a.c.zz, global1.a.c.wx), reverseBits(var_1.d.c.x), 40i), ~var_0.a.x), global1.a, firstTrailingBit(global1.c), vec3<i32>(var_1.e.d.x, 2147483647i, max(1i, ~(-745i)) << (var_0.b % 32u)));
    global2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_1.c, vec3<f32>(global2.x, global2.x, 1275f))))), var_1.c), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2021f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-825f, 1851f)))), arg_0))));
    return Struct_3(Struct_1(~firstLeadingBit(-var_0.c), 0u, select(var_2.b.a, vec4<i32>(_wgslsmith_div_i32(1i, -1617i), -u_input.b.x, 0i, i32(-1i) * -2147483647i), vec4<bool>(true, arg_0 || true, true, arg_0)), (22001i | min(var_2.d.x, -34375i)) >> (reverseBits(_wgslsmith_clamp_u32(var_1.d.b, 0u, var_1.e.b.b)) % 32u)), ~var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(-1113f))))) * var_1.c), var_1.d, var_1.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~global1.b.a.yyw;
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x);
    let var_1 = vec2<u32>(arg_1.b, arg_2.b);
    global0 = array<vec2<bool>, 27>();
    global1 = func_2(any(select(global0[_wgslsmith_index_u32(reverseBits(arg_0.d.b << (0u % 32u)), 27u)], global0[_wgslsmith_index_u32(~4294967295u, 27u)], false))).e;
    return func_2(select(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(global1.a.b, 27u)])), !(!all(vec3<bool>(false, true, true))), true)).d;
}

fn func_1() -> StorageBuffer {
    var var_0 = ~_wgslsmith_mult_vec4_u32(select(max(vec4<u32>(global1.b.b, u_input.a.x, 4294967295u, u_input.a.x), abs(vec4<u32>(115432u, 0u, u_input.a.x, global1.c))), vec4<u32>(~4294967295u, u_input.d, abs(u_input.d), ~u_input.a.x), any(vec3<bool>(true, true, true))), vec4<u32>(~global1.b.b ^ (u_input.d | 20177u), ~0u, global1.a.b, 4294967295u));
    global1 = Struct_2(func_4(func_2(!(20436u >= u_input.d)), global1.b, global1.a), global1.a, (~global1.b.b | u_input.d) | 12416u, u_input.b.zyy);
    let var_1 = 0u;
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2269f, _wgslsmith_f_op_f32(-338f * _wgslsmith_f_op_f32(global2.x - 556f)), global2.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global2.x))))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, true)), any(global0[_wgslsmith_index_u32(var_1, 27u)])), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    var var_2 = firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_1, var_1, 104091u) ^ vec4<u32>(2666u, 2603u, global1.b.b, var_1), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, 1u), vec4<u32>(global1.c, 28404u, global1.b.b, 46930u)), ~vec4<u32>(var_0.x, var_0.x, var_1, 0u)), abs(~vec4<u32>(137655u, 1u, 4294967295u, 0u))), ~vec4<u32>(~u_input.d, global1.c, 20182u >> (var_0.x % 32u), 0u)));
    return StorageBuffer(global2.yz, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1.b.a.x, 2147483647i, 13456i) >> (var_0.www % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, global1.d.x), -global1.d)), var_2.zy, var_2.zwx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

