struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 18>();
    let var_0 = abs(0i) << (~(u_input.c ^ ~(~u_input.a)) % 32u);
    let var_1 = -297f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_div_f32(124f, var_1)));
    global1 = Struct_3(firstTrailingBit(select(vec3<i32>(37654i, 1i, global1.a.x), select(vec3<i32>(var_0, global1.a.x, global1.a.x), vec3<i32>(global0[_wgslsmith_index_u32(1323u, 18u)], -1i, 63432i), select(true, false, false)), vec3<bool>(true, true, true))));
    return global2[_wgslsmith_index_u32(4294967295u | (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c) >> (vec2<u32>(26858u, 8202u) % vec2<u32>(32u)), vec2<u32>(u_input.a, 1u), vec2<u32>(14196u, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, u_input.a))) ^ u_input.c), 7u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = global1.a;
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_0.x, 20342i, global0[_wgslsmith_index_u32(4294967295u, 18u)], global1.a.x)), vec4<i32>(-2147483647i, -u_input.b, func_2().a.x, -2147483647i)), firstLeadingBit(_wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(58918u, 4294967295u, u_input.a), vec3<u32>(8399u, arg_0.b.x, 0u)), 18u)], -35548i, _wgslsmith_clamp_i32(14390i, 1i, global1.a.x))), -(~select(arg_0.a, arg_0.a, arg_0.c.x) & u_input.b));
    var var_1 = false;
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1686f, 408f)), _wgslsmith_f_op_f32(select(-1440f, 201f, true))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -495f), ~vec4<u32>(~90442u, 32225u, firstTrailingBit(u_input.c), u_input.a), arg_0.d.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -392f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -466f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1415f, -646f) * vec2<f32>(-985f, -1123f)) - vec2<f32>(673f, 119f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, -844f))))));
    let var_3 = var_2.a.x;
    return firstLeadingBit(abs(var_2.b));
}

fn func_4(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x)))), arg_0.a.x));
    var var_1 = -global1.a;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a));
    var var_3 = arg_0.d.x;
    var_1 = abs(global1.a);
    return ~(~vec2<u32>(4294967295u, reverseBits(_wgslsmith_sub_u32(38386u, 21506u))));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global1 = func_2();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-686f, 744f, 437f, -558f)) - vec4<f32>(196f, -371f, 1308f, -1474f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(127f, -375f, 222f, -773f) + vec4<f32>(1953f, 1000f, 1000f, -1449f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1263f, 387f, 1000f, -844f))), vec4<f32>(1047f, -459f, -1000f, 1000f)))));
    let var_1 = !(!(any(vec4<bool>(true, true, true, true)) && true));
    var var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(26352u, _wgslsmith_mod_u32(1415u, u_input.c ^ u_input.c)), firstLeadingBit(func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-var_0.xz), func_3(Struct_1(-1i, vec3<u32>(u_input.c, u_input.c, 0u), vec4<bool>(var_1, true, var_1, var_1), vec3<bool>(true, var_1, var_1)), vec2<u32>(38627u, 7832u)), var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 440f))))));
    var var_3 = !all(!vec4<bool>(var_1 || true, var_1, any(vec2<bool>(var_1, true)), true));
    return vec3<bool>(~47045i > (13125i << (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_2.x, var_2.x)), abs(vec2<u32>(u_input.a, var_2.x))) % 32u)), any(!select(select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false)), select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, var_1)), var_1)), all(!(!(!vec3<bool>(false, var_1, var_1)))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = 9659u;
    global1 = Struct_3(-_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(u_input.b), _wgslsmith_mod_i32(0i, 2147483647i), 1i), firstTrailingBit(max(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(-52735i, global0[_wgslsmith_index_u32(1u, 18u)], u_input.b)))));
    global1 = global2[_wgslsmith_index_u32(~(reverseBits(~4294967295u) ^ min(arg_3.x, 28753u)), 7u)];
    let var_1 = func_2();
    var var_2 = Struct_1(var_1.a.x & -global0[_wgslsmith_index_u32(~(~11181u), 18u)], vec3<u32>(arg_1, firstTrailingBit(~select(arg_3.x, u_input.c, arg_0)), 1u), !(!(!(!vec4<bool>(true, arg_0, arg_0, false)))), select(!vec3<bool>(true, arg_0, !arg_0), vec3<bool>(arg_0, false, true), arg_0));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1547f, 621f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1501f, -471f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1192f, arg_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_2), vec2<f32>(1636f, arg_2), var_2.c.x)), all(var_2.d))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1117f, _wgslsmith_f_op_f32(exp2(arg_0.a.x))));
    var var_1 = arg_0;
    global2 = array<Struct_3, 7>();
    global1 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(func_3(Struct_1(-2147483647i, abs(vec3<u32>(73351u, 4294967295u, 64308u)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 7351u), abs(vec2<u32>(u_input.c, u_input.a)))).x, u_input.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(u_input.a), 4294967295u ^ u_input.c), ~_wgslsmith_add_vec2_u32(vec2<u32>(54347u, 68284u), vec2<u32>(u_input.a, 46936u)))), 7u)];
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, ~(~(u_input.b & global1.a.x)), arg_1.x), -global1.a, -arg_1 ^ max(firstTrailingBit(~arg_1), vec3<i32>(arg_1.x << (1u % 32u), 0i, firstLeadingBit(3166i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(any(func_1(_wgslsmith_add_i32(-19497i, -22173i))), ~func_3(Struct_1(-2147483647i, vec3<u32>(0u, 0u, u_input.c), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true)), func_3(Struct_1(-1i, vec3<u32>(45957u, 0u, u_input.c), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true)), vec2<u32>(u_input.a, u_input.a)).yx).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - -251f)), min(vec3<u32>(u_input.c, 46727u, 64552u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 25573u, u_input.c), vec3<u32>(20143u, 1u, u_input.a))) << (abs(~vec3<u32>(89786u, 4142u, 1u)) % vec3<u32>(32u))), ~vec3<i32>(-16756i, max(global1.a.x, 0i), -_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(u_input.a, 18u)])));
    var var_1 = func_6(func_6(var_0, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 48072i, 12047i), vec3<i32>(2147483647i, u_input.b, 0i)), global1.a)), ~(-(~max(vec3<i32>(u_input.b, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, u_input.b, u_input.b)))));
    let var_2 = 42156u;
    let var_3 = Struct_3(max(select(_wgslsmith_mod_vec3_i32(global1.a, global1.a), firstTrailingBit(vec3<i32>(-13291i, 61603i, 1i)), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.x, -2147483647i, -26067i) << (vec3<u32>(29276u, u_input.c, 15499u) % vec3<u32>(32u)), reverseBits(global1.a), vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 18u)], u_input.b))) | -vec3<i32>(-1i, _wgslsmith_add_i32(39899i, 0i), ~u_input.b));
    let var_4 = Struct_4(vec2<f32>(var_0.a.x, -248f), _wgslsmith_clamp_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.c, 32154u, u_input.a, var_2) ^ vec4<u32>(11464u, 0u, var_2, 0u))), (vec4<u32>(1u, 0u, 4091u, 0u) ^ (vec4<u32>(4294967295u, u_input.c, var_2, 0u) << (vec4<u32>(u_input.a, 0u, 1u, var_2) % vec4<u32>(32u)))) ^ vec4<u32>(countOneBits(4294967295u), 18358u, ~var_2, select(4294967295u, var_2, false)), func_3(Struct_1(_wgslsmith_mod_i32(-42385i, -1i), ~vec3<u32>(0u, 43421u, var_2), vec4<bool>(true, true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 101916u)))), !any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, var_1.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), var_1.a, _wgslsmith_add_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 18u)], 2147483647i), vec2<i32>(-global1.a.x, -8468i)) | vec2<i32>(var_3.a.x, _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(u_input.c, 18u)], ~(-25631i))));
}

