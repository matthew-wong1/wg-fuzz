struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<f32, 10>;

var<private> global2: array<u32, 21>;

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(142376u, 12u)], Struct_1(vec3<u32>(~(~16882u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, arg_0), _wgslsmith_clamp_u32(arg_0, u_input.a, arg_0)), _wgslsmith_sub_u32(1u, arg_0))), Struct_1(~vec3<u32>(min(32439u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95060u, 21u)], 21u)]), _wgslsmith_add_u32(68513u, global2[_wgslsmith_index_u32(arg_0, 21u)]), ~1u)));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_1 = countOneBits(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(13247i, u_input.b, u_input.b, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 21u)], 12u)]) << (vec4<u32>(1u, 1u, u_input.a, 82332u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1788i, global0[_wgslsmith_index_u32(98803u, 12u)], 18555i, global0[_wgslsmith_index_u32(4294967295u, 12u)]), min(vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b), vec4<i32>(u_input.b, -52690i, 52790i, u_input.b)), vec4<i32>(46548i, global0[_wgslsmith_index_u32(var_0.c.a.x, 12u)], -29181i, global0[_wgslsmith_index_u32(u_input.a, 12u)]) ^ vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.b.a.x, 12u)], 1i, u_input.b)) << (vec4<u32>(_wgslsmith_add_u32(var_0.b.a.x, arg_0), 1u, arg_0, _wgslsmith_mult_u32(4294967295u, var_0.a.a.x)) % vec4<u32>(32u))));
    return var_0.c.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = -713f;
    var var_1 = Struct_1(select(firstTrailingBit(vec3<u32>(1u, abs(26640u), 60172u)), vec3<u32>(func_3(32982u) >> ((0u >> (0u % 32u)) % 32u), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~u_input.a, 21u)], _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.a, 21u)], 4064u, 30866u)), ~_wgslsmith_div_u32(u_input.a, global2[_wgslsmith_index_u32(132347u, 21u)])), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
    let var_2 = Struct_2(Struct_1(var_1.a), Struct_1(var_1.a), global3[_wgslsmith_index_u32(1u | ~(~(u_input.a | 0u)), 12u)]);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] + -1000f)))) * -2340f));
    let var_3 = Struct_2(Struct_1(~(~(~vec3<u32>(37073u, 4294967295u, u_input.a)))), Struct_1(reverseBits(reverseBits(firstLeadingBit(vec3<u32>(26622u, var_1.a.x, 1u))))), Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.a.x, 1u, 1u), ~select(var_1.a, vec3<u32>(12783u, var_1.a.x, 9639u), vec3<bool>(false, false, false)), _wgslsmith_add_vec3_u32(countOneBits(var_1.a), ~var_1.a))));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_u32(var_1.a, ~var_3.c.a)), Struct_1(vec3<u32>(var_1.a.x, max(var_1.a.x, global2[_wgslsmith_index_u32(62126u, 21u)] >> (var_1.a.x % 32u)), min(~4111u, var_1.a.x))), var_3.b);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = Struct_1(arg_1.a >> (~(min(vec3<u32>(arg_1.a.x, 0u, arg_1.a.x), arg_2.a.a) << (select(vec3<u32>(arg_2.b.a.x, arg_1.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.a.x, 21u)], 21u)]), arg_2.b.a, true) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(func_2().b, Struct_1(var_0.a), arg_2.b);
    global3 = array<Struct_1, 12>();
    var var_2 = 1u;
    let var_3 = var_1;
    return ~0u;
}

fn func_1() -> vec3<bool> {
    global0 = array<i32, 12>();
    global3 = array<Struct_1, 12>();
    let var_0 = vec4<u32>(26428u, reverseBits(func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 516u, u_input.a) >> (vec3<u32>(606u, u_input.a, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(21632u, u_input.a, u_input.a))), 10u)], global3[_wgslsmith_index_u32(~firstTrailingBit(1u), 12u)], func_2(), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 10u)])))), reverseBits(_wgslsmith_sub_u32(func_4(global1[_wgslsmith_index_u32(1u, 10u)], Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 47010u)), Struct_2(Struct_1(vec3<u32>(70740u, u_input.a, u_input.a)), Struct_1(vec3<u32>(0u, 36121u, 4294967295u)), Struct_1(vec3<u32>(54053u, 39183u, 1u))), -664f) | (global2[_wgslsmith_index_u32(u_input.a, 21u)] & global2[_wgslsmith_index_u32(u_input.a, 21u)]), firstTrailingBit(1u))), ~u_input.a);
    let var_1 = vec4<i32>(max(u_input.b, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 12u)], 1i, -10992i), vec4<i32>(1i, u_input.b, -2147483647i, -2147483647i))), -(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.b, -75343i)))), min(-4185i, select(~global0[_wgslsmith_index_u32(0u, 12u)] >> (~var_0.x % 32u), i32(-1i) * -u_input.b, false)), _wgslsmith_mod_i32(u_input.b, ~2147483647i), _wgslsmith_mult_i32(-20246i | firstLeadingBit(select(u_input.b, u_input.b, true)), -_wgslsmith_div_i32(u_input.b, u_input.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(860f, global1[_wgslsmith_index_u32(0u, 10u)]))) - vec2<f32>(162f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 21u)], 10u)])))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], -238f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, 739f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(48639u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)])), vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 1994f))))));
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~4294967295u, 10u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 10u)])));
    let var_1 = !func_1();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(28318u, 21u)], 16547u & u_input.a), 12u)];
    var var_3 = func_2().b;
    var var_4 = vec2<f32>(-164f, global1[_wgslsmith_index_u32(~abs(58628u), 10u)]);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)])))) + _wgslsmith_f_op_f32(abs(var_4.x)));
    let var_6 = func_2();
    let var_7 = func_2().c;
    global2 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~26843u, var_6.a.a.x), 21u)], _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4.x, 290f))), var_7.a.x, ~var_3.a.x);
}

