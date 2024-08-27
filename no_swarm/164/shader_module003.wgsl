struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<i32, 22> = array<i32, 22>(-1i, -1i, 29963i, 1i, -2509i, -806i, -46597i, -1i, 1i, -23168i, -44259i, -6542i, 0i, 2147483647i, 1i, -1i, 34284i, 0i, -1i, 8594i, 38074i, 18854i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-344f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -659f));
    global1 = array<i32, 22>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -823f);
    global1 = array<i32, 22>();
    let var_1 = Struct_1(-reverseBits(-7282i), select(countOneBits(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(20603u, 51761u)), vec2<u32>(13885u, 12021u)), ~vec2<u32>(1u, 1u) | select(vec2<u32>(0u, 4026u), vec2<u32>(4294967295u, 1u), false)), true & (global1[_wgslsmith_index_u32(~4294967295u, 22u)] == global1[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1267f, 1154f, 1284f), _wgslsmith_f_op_vec3_f32(vec3<f32>(520f, arg_0, 234f) * vec3<f32>(748f, -1756f, arg_0)))))), vec2<i32>(~(~u_input.a.x), 0i) ^ -vec2<i32>(2147483647i, firstTrailingBit(global1[_wgslsmith_index_u32(1u, 22u)])), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), any(vec2<bool>(false, true)))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    return -min(var_1.d.x, u_input.a.x);
}

fn func_2() -> Struct_2 {
    global1 = array<i32, 22>();
    global0 = array<Struct_2, 21>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(228f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1890f * -1083f)), _wgslsmith_f_op_f32(-2509f - -323f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-1597f)), -722f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1855f, -1387f) * vec2<f32>(-755f, 736f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, 983f))), true))), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-53824i, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(57686i, 3318i), u_input.a)), ~_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a.x), u_input.a)), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 645f, -360f) * vec3<f32>(-1259f, -1581f, 786f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, 1559f, -262f))))), u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<bool>(true, false)), Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(690f + -429f)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16059u, 40352u), vec3<u32>(13436u, 19456u, 18925u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -445f, 683f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, -527f, 477f))), u_input.a, select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))), Struct_1(~(~(-9397i)), 12517u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-856f, 871f, 417f), vec3<f32>(1130f, 828f, -560f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(418f, 374f, 319f) * vec3<f32>(-1000f, 179f, 713f))), select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec2<bool>(true, true)) ^ u_input.a, select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 204f, 160f)))))));
    var var_1 = var_0.c.d.x;
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.b.b, 4294967295u), 22u)];
    return Struct_2(var_0.c, Struct_1(var_0.d.a.d.x, var_0.d.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.c)), vec2<i32>(u_input.a.x, u_input.a.x), !vec2<bool>(true, var_0.d.b.e.x & true)), !select(!select(vec3<bool>(var_0.c.e.x, false, true), vec3<bool>(true, var_0.c.e.x, var_0.c.e.x), false), !(!vec3<bool>(var_0.c.e.x, true, var_0.c.e.x)), !vec3<bool>(var_0.d.b.e.x, var_0.c.e.x, var_0.d.a.e.x)), _wgslsmith_f_op_vec3_f32(step(var_0.c.c, _wgslsmith_f_op_vec3_f32(var_0.d.b.c - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, -1000f, var_0.c.c.x) + vec3<f32>(1000f, var_0.b.x, -1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, var_0.c.c.x, var_0.a)))))))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = var_0;
    let var_2 = false && !var_0.c.x;
    global0 = array<Struct_2, 21>();
    var var_3 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, var_1.b.c.x) * 513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)))));
    return Struct_3(_wgslsmith_f_op_f32(1397f + var_1.b.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x)))), func_2().a, func_2());
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = 4294967295u <= (~_wgslsmith_div_u32(arg_0.c.b, arg_0.c.b) | 32300u);
    var var_1 = ~(~(~(-vec4<i32>(arg_0.d.a.d.x, 6328i, 55624i, u_input.a.x))) ^ (vec4<i32>(~0i, 8038i | u_input.a.x, ~global1[_wgslsmith_index_u32(arg_0.c.b, 22u)], _wgslsmith_add_i32(1i, 24205i)) ^ vec4<i32>(0i, u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_0.d.b.b, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]))));
    var var_2 = false;
    var var_3 = func_2().a;
    var var_4 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(32744u, 22u)], ~0u, func_1().c.c, countOneBits(-vec2<i32>(0i, arg_0.d.a.d.x)), select(select(vec2<bool>(var_3.e.x, var_3.e.x), vec2<bool>(arg_0.d.a.e.x, arg_0.d.a.e.x), arg_0.d.b.e.x), var_3.e, true)), arg_0.d.b, select(func_1().d.c, !vec3<bool>(true, -13531i < arg_0.d.a.a, true), arg_0.d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3.c))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, var_3.c.x) + var_3.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, arg_0.d.d.x, var_3.c.x)))))));
    return countOneBits(~_wgslsmith_add_u32(_wgslsmith_add_u32(var_3.b, arg_0.d.a.b) << (_wgslsmith_sub_u32(var_3.b, var_3.b) % 32u), ~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_i32(countOneBits(-36523i), u_input.a.x), firstTrailingBit(_wgslsmith_add_u32(func_4(func_1()), ~1u)), func_1().c.c, vec2<i32>(~firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(28899u, 22u)], u_input.a.x), vec4<i32>(u_input.a.x, 61103i, -1i, 1i)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 87389u), vec2<u32>(0u, 4294967295u)) % 32u))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_2().b.e), func_1().d.b.e));
    var var_1 = global0[_wgslsmith_index_u32(max(1u, _wgslsmith_mult_u32(0u, var_0.b)), 21u)];
    let var_2 = ~_wgslsmith_div_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, var_1.a.b, var_1.b.b), vec3<u32>(3824u, var_1.b.b, var_1.a.b), vec3<u32>(20475u, var_0.b, 40425u))), vec3<u32>(select(var_1.a.b, ~20550u, all(vec3<bool>(true, var_0.e.x, false))), 0u, _wgslsmith_mod_u32(1u, 23379u)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(2323f - _wgslsmith_f_op_f32(-var_1.d.x)), var_1.d.zy, Struct_1(-91084i, ~var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d.x, 1743f, -900f), var_1.a.c)) - var_1.a.c), _wgslsmith_mod_vec2_i32(firstTrailingBit(~var_1.a.d), var_1.b.d), vec2<bool>(select(var_1.a.e.x, var_1.a.e.x, var_0.e.x) != false, any(vec4<bool>(var_1.a.e.x, false, true, var_0.e.x)))), global0[_wgslsmith_index_u32(func_1().c.b, 21u)]);
    var var_4 = var_3.c;
    let var_5 = func_1();
    let var_6 = 1i;
    let var_7 = func_1();
    var_0 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.c.x, _wgslsmith_f_op_f32(round(-559f)), _wgslsmith_f_op_f32(var_5.a - var_0.c.x), -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, var_5.d.d.x, 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.c.x, -1466f, -386f, var_3.c.c.x) - vec4<f32>(var_3.d.d.x, var_0.c.x, -1015f, 206f))))), var_0.c.x, _wgslsmith_div_vec4_i32(min(vec4<i32>(var_1.b.d.x << (var_4.b % 32u), 1i, ~(-40239i), var_6 << (var_2.x % 32u)), vec4<i32>(var_6, ~9290i, 34145i ^ var_1.b.d.x, var_7.d.a.a)), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_4.a, -7239i, -1i, var_7.d.b.a), vec4<i32>(var_0.a, var_0.d.x, -1i, 0i)) & (select(vec4<i32>(var_7.c.d.x, 2147483647i, -6229i, 24828i), vec4<i32>(var_6, -2147483647i, -2147483647i, 81266i), vec4<bool>(var_3.c.e.x, true, var_3.d.c.x, var_4.e.x)) << (vec4<u32>(var_2.x, 0u, var_2.x, var_5.d.a.b) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(22113u, 26470u, 29417u, 45332u)), ~(~vec4<u32>(var_4.b, var_2.x, var_1.a.b, var_2.x)) << (vec4<u32>(_wgslsmith_sub_u32(var_2.x, var_0.b), var_0.b, 1u ^ var_3.d.a.b, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3.d.b.b, abs(var_7.c.b), 4294967295u), vec4<u32>(~31809u, 1u, reverseBits(var_7.d.b.b), abs(0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x))));
}

