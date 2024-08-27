struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(~vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x))), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(20629u, u_input.a, 1u, 36281u), ~vec4<u32>(u_input.a, 10924u, u_input.a, u_input.a)), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 66374u)))), firstLeadingBit(26940u));
    var var_1 = Struct_3(_wgslsmith_clamp_u32(11361u, ~u_input.c.x, 501u), -822i, !select(vec2<bool>(arg_1, arg_1), !(!vec2<bool>(arg_1, arg_1)), select(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1)), !vec2<bool>(true, arg_1), true)), global0[_wgslsmith_index_u32(41921u, 9u)]);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, select(select(0u, _wgslsmith_mod_u32(var_1.d.b.x, var_0.x), 4294967295u != u_input.c.x), u_input.a, false)), 9u)]);
    var var_3 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_0.x & ~firstTrailingBit(81042u), 9u)]), Struct_3(~4294967295u, 8534i, var_1.c, Struct_1(min(u_input.d, u_input.b) >= (u_input.b & -35069i), vec3<u32>(var_0.x & 1u, 0u, u_input.a << (4294967295u % 32u)))), any(vec4<bool>(arg_1, u_input.b > var_1.b, var_1.c.x, var_2.a.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(63561u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.b.x, 0u, 39516u), var_2.a.b)), vec2<u32>(38124u, var_1.d.b.x)), 89612u);
    return -1000f;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-901f, _wgslsmith_f_op_f32(max(628f, -467f))), _wgslsmith_f_op_f32(abs(-611f))))), _wgslsmith_f_op_f32(f32(-1f) * -2170f), _wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1109f + _wgslsmith_f_op_f32(func_3(-1000f, false))) * -1603f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-922f, -1000f)) * _wgslsmith_f_op_f32(-1239f - 2210f))) - 145f));
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -879f, 193f))), _wgslsmith_f_op_vec4_f32(trunc(var_0)), any(vec3<bool>(true, true, true)))))));
    global0 = array<Struct_1, 9>();
    let var_2 = select(u_input.c, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), ~vec3<u32>(1332u, u_input.c.x, u_input.c.x)) & 8523u, countOneBits(81733u), u_input.a >> (19662u % 32u)), select(any(vec2<bool>(u_input.b > u_input.d, true)), true, !(any(vec4<bool>(false, true, true, true)) & true)));
    return max(vec4<u32>(reverseBits(_wgslsmith_add_u32(1u, ~var_2.x)), u_input.c.x, 1u, ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, var_2.x), 1u)), abs(vec4<u32>(u_input.c.x, min(var_2.x, 43578u), select(var_2.x, 26441u, true), ~var_2.x) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, 4694u, u_input.a), vec4<u32>(var_2.x, var_2.x, 37395u, u_input.a)), u_input.a | var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.a, var_2.x), vec4<u32>(u_input.a, 40902u, u_input.c.x, var_2.x)), u_input.a) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_clamp_vec4_u32(func_2(), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c.x, u_input.a), vec4<u32>(u_input.a, 1u, 41470u, 4294967295u))), ~(~vec4<u32>(countOneBits(0u), _wgslsmith_sub_u32(0u, u_input.a), 7009u, _wgslsmith_mult_u32(107950u, u_input.c.x))));
    let var_1 = countOneBits(~1u << (abs(var_0.x) % 32u));
    let var_2 = Struct_5(0u);
    let var_3 = ~vec4<u32>(firstTrailingBit(1u), ~u_input.c.x, countOneBits(~0u), var_0.x);
    return -105f;
}

fn func_4(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_3(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 33070u, 6939u) >> (vec4<u32>(21630u, u_input.c.x, 1u, u_input.a) % vec4<u32>(32u)), vec4<u32>(23761u, 4294967295u, 15724u, 14021u)) << (u_input.c.x % 32u)), 2147483647i, vec2<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(any(vec2<bool>(false, true)), true, true) & any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), Struct_1(false, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 41138u, u_input.a), ~1u, 9144u), ~_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(18785u, u_input.c.x, u_input.a)))));
    var var_1 = 81u;
    let var_2 = true;
    var_1 = 1u;
    var_1 = 1u;
    return Struct_4(Struct_2(Struct_1(var_2, reverseBits(vec3<u32>(var_0.d.b.x, u_input.a, 0u)))), Struct_3(4294967295u, _wgslsmith_mult_i32(0i, abs(_wgslsmith_clamp_i32(u_input.b, u_input.d, var_0.b))), vec2<bool>(true, any(vec4<bool>(var_2, var_2, var_2, var_2))), Struct_1((arg_0 <= arg_0) & true, min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, u_input.a, 0u), vec3<u32>(0u, 17440u, u_input.a)), vec3<u32>(var_0.d.b.x, 20813u, 4294967295u)))), true, 4294967295u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.c.x, ~9369u ^ ~reverseBits(firstTrailingBit(u_input.c.x)));
    let var_1 = 1u;
    var var_2 = func_4(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.d, -2147483647i, ~(u_input.b >> (var_0.x % 32u)), -1i))));
    global0 = array<Struct_1, 9>();
    var var_3 = 70932u;
    var var_4 = Struct_3(~var_2.b.a, _wgslsmith_mod_i32(~(0i), 2147483647i), var_2.b.c, global0[_wgslsmith_index_u32(29029u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, var_2.b.d.b.x, var_2.a.a.b.x), vec4<u32>(var_4.a, 8254u, var_1, var_1)) | 4294967295u)), ~var_2.a.a.b.yz >> (~max(var_0, ~var_4.d.b.xx) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -2073f, 1000f, 852f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1652f - -2078f) - -1538f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2540f - -176f), _wgslsmith_f_op_f32(func_1(vec4<i32>(var_2.b.b, 1i, u_input.d, 1879i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1500f)))), true)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_2.a.a.b.x, 48152u, var_2.a.a.b.x, 4294967295u) ^ vec4<u32>(4294967295u, var_2.a.a.b.x, 1u, u_input.a)), vec4<u32>(var_1, ~4287u, countOneBits(4294967295u), 1u), ~abs(vec4<u32>(var_2.d, u_input.a, var_2.b.a, var_2.d))), vec4<u32>(var_4.a, ~var_0.x, 0u, ~var_2.e ^ 26321u)));
}

