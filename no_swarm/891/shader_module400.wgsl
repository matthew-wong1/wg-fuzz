struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<f32, 32>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = ~firstTrailingBit(vec4<u32>(1u << (~4294967295u % 32u), min(_wgslsmith_mult_u32(arg_1, global2.c.x), arg_1 << (4294967295u % 32u)), 1u >> (~arg_1 % 32u), _wgslsmith_div_u32(arg_1, _wgslsmith_mult_u32(arg_1, global2.c.x))));
    global3 = array<vec2<bool>, 25>();
    var var_1 = Struct_5(arg_1, global1[_wgslsmith_index_u32(56557u, 32u)], var_0, global2.b);
    var var_2 = select(select(!select(global2.a, !vec3<bool>(global4.x, global2.a.x, true), select(vec3<bool>(global4.x, false, global2.a.x), global2.a, global2.a)), select(!global2.a, select(!vec3<bool>(true, global2.a.x, global4.x), !global2.a, true), true), select(global2.a, global2.a, true)), select(vec3<bool>(true, _wgslsmith_mult_i32(global2.d, -23258i) != 2147483647i, !(!global2.a.x)), select(global2.a, global2.a, vec3<bool>(true, false, !global4.x)), true), vec3<bool>(all(global4.zz), global4.x, ~var_1.d < countOneBits(reverseBits(u_input.a.x))));
    let var_3 = Struct_3(Struct_1(select(!(!vec3<bool>(global4.x, true, true)), !vec3<bool>(var_2.x, true, true), !vec3<bool>(global2.a.x, var_2.x, global2.a.x)), global2.b >> (arg_1 % 32u), ~reverseBits(vec2<u32>(var_0.x, global2.c.x)), max(firstTrailingBit(var_1.d) & select(-44336i, global2.b, false), 1i & min(-1i, var_1.d)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(global2.e, vec4<i32>(-5573i, 9662i, 0i, 26536i), vec4<i32>(-23830i, 1i, u_input.a.x, u_input.a.x)))), countOneBits(global2.e.x) < global2.d, 2147483647i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(-1840f, arg_2))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.b, -949f)), arg_2, false))))), Struct_1(global2.a, -_wgslsmith_mod_i32(u_input.a.x, ~(-1i)), _wgslsmith_mod_vec2_u32(var_0.yw, vec2<u32>(_wgslsmith_mult_u32(global2.c.x, 4294967295u), abs(var_0.x))), var_1.d, vec4<i32>(-(~(-29679i)), 6276i, var_1.d, _wgslsmith_mod_i32(u_input.a.x & var_1.d, 2147483647i))));
    return var_3.e.b;
}

fn func_2() -> u32 {
    let var_0 = global4.x;
    global1 = array<f32, 32>();
    global0 = array<vec4<bool>, 2>();
    var var_1 = Struct_2(Struct_1(global2.a, firstTrailingBit(1i), vec2<u32>(global2.c.x | _wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(17339u, global2.c.x, 1u), vec3<u32>(24742u, global2.c.x, global2.c.x))), _wgslsmith_dot_vec2_i32(-reverseBits(global2.e.wz), vec2<i32>(1i, _wgslsmith_sub_i32(1i, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, global2.e.x, global2.d, global2.e.x), global2.e >> (vec4<u32>(0u, 12707u, 35517u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ func_3(global1[_wgslsmith_index_u32(global2.c.x, 32u)], global2.c.x, -1546f), 58545i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d, global2.d, -12107i), u_input.a))), !global0[_wgslsmith_index_u32(countOneBits(global2.c.x), 2u)], abs(~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(6415u, global2.c.x), vec2<u32>(global2.c.x, global2.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.c.x, 32u)], global1[_wgslsmith_index_u32(global2.c.x, 32u)]) - vec2<f32>(102f, -1264f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2.c.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-800f, global1[_wgslsmith_index_u32(global2.c.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global2.c.x, 32u)]), vec4<f32>(global1[_wgslsmith_index_u32(35653u, 32u)], 390f, global1[_wgslsmith_index_u32(global2.c.x, 32u)], 851f), global0[_wgslsmith_index_u32(global2.c.x, 2u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(select(global2.c.x, 110925u, true), 32u)], _wgslsmith_f_op_f32(-424f * 952f), 1192f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(0u, 32u)]))))));
    var var_2 = global2.a.x;
    return 84521u;
}

fn func_1() -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(global2.c.x | (~32165u | func_2()), ~global2.c.x), 1u, reverseBits(~(~_wgslsmith_add_u32(77366u, 0u))));
    var var_1 = global1[_wgslsmith_index_u32(2781u, 32u)];
    let var_2 = Struct_1(global2.a, -30210i, var_0.xy, global2.d, _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(43725i, -1i, -12621i, global2.d), _wgslsmith_mod_vec4_i32(vec4<i32>(-22397i, global2.b, -1i, 5744i), vec4<i32>(global2.e.x, u_input.a.x, 2147483647i, -9535i)))), vec4<i32>(_wgslsmith_mod_i32(select(1i, 72171i, true), ~global2.b), max(firstLeadingBit(global2.d), global2.b), 65787i, 2147483647i)));
    let var_3 = vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 32u)] > global1[_wgslsmith_index_u32(global2.c.x, 32u)], true);
    global4 = var_2.a;
    return ~global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -u_input.a.x & global2.d, u_input.a.x, func_1() >> (global2.c.x % 32u)), -global2.e >> (~vec4<u32>(0u, 30814u, global2.c.x, global2.c.x) % vec4<u32>(32u))), vec4<i32>(countOneBits(~abs(1i)), countOneBits(_wgslsmith_sub_i32(-2147483647i, u_input.a.x)), func_3(global1[_wgslsmith_index_u32(44339u, 32u)], _wgslsmith_mult_u32(4294967295u, global2.c.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.c.x, global2.c.x), 32u)]) & ~global2.b, -1i));
    let var_1 = !all(vec3<bool>(all(select(global2.a, vec3<bool>(global2.a.x, false, false), global4.x)), any(select(global0[_wgslsmith_index_u32(global2.c.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(global2.c.x, 2u)])), global4.x));
    var var_2 = Struct_1(!(!select(global2.a, select(vec3<bool>(true, global4.x, true), global2.a, global2.a), select(global2.a, global2.a, true))), -(-(u_input.a.x | u_input.a.x) >> ((global2.c.x >> (global2.c.x % 32u)) % 32u)), max(countOneBits(~vec2<u32>(0u, 4294967295u) << (global2.c % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.x, 1u) ^ ~vec2<u32>(global2.c.x, global2.c.x), _wgslsmith_div_vec2_u32(global2.c, countOneBits(vec2<u32>(50631u, 26027u))))), abs(u_input.a.x) << (_wgslsmith_clamp_u32(abs(global2.c.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, global2.c.x, 0u), vec3<u32>(global2.c.x, global2.c.x, 1u))), ~4294967295u) % 32u), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, 2147483647i, var_0.x), ~global2.e, select(global2.e, vec4<i32>(-42716i, u_input.a.x, 1955i, global2.b), global0[_wgslsmith_index_u32(global2.c.x, 2u)]))));
    var var_3 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_2.d, 1i), global2.e.xww), firstTrailingBit(abs(vec3<i32>(u_input.a.x, 41441i, -2147483647i)))), reverseBits(global2.d)) << (var_2.c.x % 32u);
    let var_4 = !vec3<bool>(global2.a.x && (global4.x & true), true, select(var_2.a.x, var_2.a.x, select(true, true, any(vec2<bool>(var_1, false)))));
    let var_5 = _wgslsmith_add_vec4_i32(select(reverseBits(-vec4<i32>(-6025i, -46621i, -1i, 182i)), global2.e, select(global0[_wgslsmith_index_u32(0u, 2u)], vec4<bool>(var_2.a.x, var_1, var_4.x, true), var_1)), vec4<i32>(40579i, -(-83345i & u_input.a.x), 4947i, 46487i)) << (vec4<u32>(3659u, 63536u, var_2.c.x << (4294967295u % 32u), 1u << (~(~global2.c.x) % 32u)) % vec4<u32>(32u));
    global3 = array<vec2<bool>, 25>();
    let var_6 = global0[_wgslsmith_index_u32(3861u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, vec2<i32>(~var_0.x, ~(-8016i)), global2.e.yyy, -firstLeadingBit(~(-u_input.a)));
}

