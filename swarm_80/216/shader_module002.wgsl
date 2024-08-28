struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 1u, 4294967295u, 9391u), vec4<u32>(36387u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(25399u, 4294967295u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 1039u), vec4<u32>(4294967295u, 0u, 11120u, 1u), vec4<u32>(10980u, 0u, 17347u, 48401u), vec4<u32>(0u, 47540u, 6053u, 53853u), vec4<u32>(0u, 1u, 0u, 3291u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(4294967295u, 0u, 14286u, 54485u), vec4<u32>(50714u, 35029u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 33291u, 13907u), vec4<u32>(1u, 45063u, 4294967295u, 0u));

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<u32, 20>;

var<private> global3: bool = false;

var<private> global4: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(~(~(34856u ^ u_input.a)), arg_1.c.x, countOneBits(69054u) << (arg_1.c.x % 32u)));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-355f)), _wgslsmith_f_op_f32(trunc(-141f)))) > _wgslsmith_f_op_f32(-1f), arg_2.b.b, false, true);
    let var_2 = Struct_1(~(~(u_input.b.x ^ -2147483647i)), arg_2.a != arg_1.b.a);
    global3 = any(var_1.zx);
    let var_3 = 1f;
    return !select(var_1, vec4<bool>(var_2.b, all(!global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9088u, 20u)], 14u)]), true, arg_1.e.b.d), all(vec4<bool>(!arg_1.a.b.b.b, all(vec3<bool>(true, true, arg_1.d)), var_2.b, any(var_1))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_5) -> f32 {
    var var_0 = all(select(select(!(!vec4<bool>(false, true, arg_3.b.a.c, true)), vec4<bool>(true, true, false, !arg_0.a.b.b), true || arg_0.c), select(func_3(reverseBits(-2147483647i), arg_3.b, arg_0.a), vec4<bool>(true, any(vec4<bool>(false, arg_3.a.b.b, false, false)), arg_0.a.d, !arg_3.b.b.d), true), vec4<bool>(true, all(global4[_wgslsmith_index_u32(~u_input.a, 14u)]), any(!vec4<bool>(false, arg_1.x, arg_1.x, false)), arg_1.x)));
    let var_1 = u_input.b.yxx;
    global4 = array<vec2<bool>, 14>();
    global3 = ~1u < arg_3.b.c.x;
    var var_2 = arg_0.b;
    return 1758f;
}

fn func_4(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = u_input.d.x;
    global3 = all(vec2<bool>(!any(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 20u)] & 0u, 14u)]), true));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.b.x, 1i), vec2<i32>(-28226i, _wgslsmith_sub_i32(-34510i, -21099i)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.yy, vec2<u32>(4294967295u, 50101u)), countOneBits(u_input.d.xz)), min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~4294967295u, 20u)], 20u)], 0u)), u_input.c), 1u)], -1i, select(u_input.b.x <= -_wgslsmith_sub_i32(12488i, u_input.b.x), false, true));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c), 20u)]), 1u & ~u_input.d.x, u_input.a, 15519u), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, _wgslsmith_mult_u32(30576u, u_input.c), ~u_input.a, _wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.c, 20u)])), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(4294967295u | u_input.d.x, 15u)], ~vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(30523u, 20u)], 1u)))) >> (global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(52509u, global2[_wgslsmith_index_u32(1u, 20u)]))), 20u)] % 32u);
    var var_3 = firstLeadingBit(-(vec2<i32>(-1i) * -vec2<i32>(33978i, 2147483647i)));
    return u_input.b.wzw;
}

fn func_5(arg_0: vec3<i32>) -> Struct_5 {
    global3 = func_3(-39583i, Struct_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -23613i, arg_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(8532i, 4740i, 2147483647i), arg_0)), Struct_2(u_input.b.x, global1[_wgslsmith_index_u32(countOneBits(53606u), 1u)], min(u_input.b.x, 0i), true), true), Struct_2(_wgslsmith_clamp_i32(reverseBits(arg_0.x), 26170i | u_input.b.x, arg_0.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, max(0u, 9416u)), 20u)], 1u)], firstLeadingBit(arg_0.x), true), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25247u, 20u)], 20u)]), u_input.d)), firstLeadingBit(u_input.a), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 20u)], 5948u, u_input.d.x) >> (global2[_wgslsmith_index_u32(u_input.a, 20u)] % 32u)), global2[_wgslsmith_index_u32(21121u ^ global2[_wgslsmith_index_u32(75323u, 20u)], 20u)] <= u_input.d.x, Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-29762i, arg_0.x, u_input.b.x, -32907i), u_input.b), Struct_2(_wgslsmith_div_i32(-3211i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 1u)], 1i, global2[_wgslsmith_index_u32(u_input.c, 20u)] > 4294967295u), any(vec4<bool>(false, true, true, false)))), Struct_2(u_input.b.x, global1[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~(~4294967295u), 20u)]), 1u)], u_input.b.x, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))).x;
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_1 = ~2147483647i;
    return Struct_5(Struct_2(-99i, global1[_wgslsmith_index_u32(~(~countOneBits(u_input.a)), 1u)], (2147483647i << (~4294967295u % 32u)) << (global2[_wgslsmith_index_u32(u_input.c, 20u)] % 32u), select(!any(vec2<bool>(false, false)), true, true)), Struct_4(Struct_3(_wgslsmith_add_i32(0i, arg_0.x), Struct_2(~arg_0.x, global1[_wgslsmith_index_u32(98124u, 1u)], -1i, 51320i <= u_input.b.x), true), Struct_2(u_input.b.x, Struct_1(u_input.b.x, select(false, true, false)), u_input.b.x & u_input.b.x, all(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56597u, 20u)], 14u)])), firstTrailingBit(u_input.d), true, Struct_3(u_input.b.x, Struct_2(31546i, global1[_wgslsmith_index_u32(abs(1u), 1u)], _wgslsmith_mult_i32(-1i, 2147483647i), func_3(-2147483647i, Struct_4(Struct_3(u_input.b.x, Struct_2(22831i, Struct_1(-4346i, true), 2147483647i, false), false), Struct_2(2147483647i, Struct_1(u_input.b.x, false), arg_0.x, false), vec3<u32>(u_input.d.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77332u, 20u)], 20u)], 1u), true, Struct_3(u_input.b.x, Struct_2(u_input.b.x, Struct_1(arg_0.x, false), 1i, false), false)), Struct_2(u_input.b.x, Struct_1(arg_0.x, true), arg_0.x, true)).x), true)), any(vec3<bool>(true, -518f > _wgslsmith_f_op_f32(select(-715f, 1077f, true)), any(vec4<bool>(true, true, true, true)))));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = !(!vec4<bool>(firstTrailingBit(0u) < global2[_wgslsmith_index_u32(~0u, 20u)], true && (global2[_wgslsmith_index_u32(0u, 20u)] > 1u), all(vec3<bool>(true, false, true)) & true, true));
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, -704f, -228f, -534f)) - vec4<f32>(728f, -187f, 803f, -746f)) * vec4<f32>(_wgslsmith_f_op_f32(-420f - 132f), _wgslsmith_f_op_f32(round(-187f)), _wgslsmith_f_op_f32(func_2(Struct_5(Struct_2(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.b.x, false), Struct_4(Struct_3(u_input.b.x, Struct_2(-22895i, Struct_1(2147483647i, var_0.x), u_input.b.x, true), false), Struct_2(u_input.b.x, Struct_1(717i, var_0.x), -7656i, var_0.x), vec3<u32>(11796u, u_input.a, global2[_wgslsmith_index_u32(73191u, 20u)]), true, Struct_3(u_input.b.x, Struct_2(1i, global1[_wgslsmith_index_u32(1438u, 1u)], -4426i, false), var_0.x)), true), var_0.yw, u_input.d.x, Struct_5(Struct_2(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], -1i, false), Struct_4(Struct_3(u_input.b.x, Struct_2(-35268i, Struct_1(26342i, var_0.x), u_input.b.x, false), var_0.x), Struct_2(2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.b.x, var_0.x), u_input.d, var_0.x, Struct_3(u_input.b.x, Struct_2(u_input.b.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 20u)], 20u)], 1u)], 2147483647i, false), var_0.x)), false))), -1236f))));
    global4 = array<vec2<bool>, 14>();
    global1 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(-990f)), _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(-262f)), _wgslsmith_div_f32(-1000f, 1147f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1554f, 1845f))), any(vec2<bool>(var_0.x, true)))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1f)), var_0.x));
    return -var_1.a.a;
}

fn func_6(arg_0: vec3<f32>, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_5(Struct_2(u_input.b.x, Struct_1(-13068i, all(vec4<bool>(true, false, arg_1, true)) & arg_1), u_input.b.x & reverseBits(min(2147483647i, u_input.b.x)), true), func_5(u_input.b.zzz).b, true);
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 1u)];
    let var_2 = var_0;
    let var_3 = select(select(!global4[_wgslsmith_index_u32(1u, 14u)], !global4[_wgslsmith_index_u32(14204u, 14u)], var_1.b), func_3(1i << (0u % 32u), func_5(min(max(vec3<i32>(var_2.b.b.a, -3707i, var_1.a), u_input.b.zxy), ~vec3<i32>(-28553i, var_2.b.b.c, 0i))).b, func_5(-vec3<i32>(var_1.a, u_input.b.x, 1i) | (vec3<i32>(var_0.a.c, 2147483647i, var_0.a.a) >> (vec3<u32>(var_2.b.c.x, var_0.b.c.x, var_2.b.c.x) % vec3<u32>(32u)))).b.e.b).zx, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(var_2.b.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_2.b.c.yy, vec2<u32>(14979u, 1u)), min(vec2<u32>(var_2.b.c.x, var_0.b.c.x), var_2.b.c.yy)), false) ^ 9128u, 20u)], 14u)]);
    global4 = array<vec2<bool>, 14>();
    return _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(27642u, 4918u)) | firstLeadingBit(28547u), 15u)] | ~min(abs(global0[_wgslsmith_index_u32(var_0.b.c.x, 15u)]), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(var_0.b.c.x, 15u)], vec4<u32>(u_input.d.x, var_2.b.c.x, 45434u, 1u))), global0[_wgslsmith_index_u32(~(~var_0.b.c.x), 15u)] << (~abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(12325u, var_2.b.c.x), 15u)]) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    global0 = array<vec4<u32>, 15>();
    global1 = array<Struct_1, 1>();
    var var_0 = ~(~vec2<u32>(u_input.a, 5808u & ~u_input.a));
    var var_1 = 0i;
    let var_2 = func_6(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f * -378f)))), -485f, _wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(min(-540f, 1086f)))), func_1(var_0.x) > firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.b.x) << (abs(var_0.x) % 32u)));
    var var_3 = Struct_4(func_5(_wgslsmith_clamp_vec3_i32(countOneBits(func_4(vec4<f32>(-1000f, -743f, 475f, 1294f))), ~(~u_input.b.zzx), func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1314f, 402f, -800f, -1000f), vec4<f32>(-879f, 1863f, -1557f, -159f)))))).b.e, func_5(~(-vec3<i32>(-1i, u_input.b.x, 0i)) << (func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -1i, -1i), u_input.b.ywx)).b.c % vec3<u32>(32u))).b.e.b, vec3<u32>(44569u, 1u, 9122u), all(vec3<bool>(true, true, true)), func_5(firstLeadingBit(select(vec3<i32>(39068i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -6672i), vec3<bool>(true, true, true)))).b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1084f), select(_wgslsmith_sub_vec3_i32(-(u_input.b.wyz ^ u_input.b.wxz), vec3<i32>(-36497i, -10637i, -9423i) << (var_3.c % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(u_input.b.wwz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) & _wgslsmith_div_vec3_i32(-vec3<i32>(1i, -1i, 2147483647i), _wgslsmith_sub_vec3_i32(u_input.b.ywx, u_input.b.xyz)), func_3(func_1(u_input.c), func_5(u_input.b.yzy << (var_3.c % vec3<u32>(32u))).b, func_5(select(u_input.b.yzw, vec3<i32>(u_input.b.x, -1i, -17171i), vec3<bool>(var_3.d, var_3.b.b.b, var_3.a.b.d))).b.b).zyy), var_3.c.x, ~_wgslsmith_mult_vec2_u32(~var_3.c.xx, vec2<u32>(var_3.c.x, var_3.c.x)) & ~(~(~u_input.d.xx)));
}

