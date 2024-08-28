struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(1u, 1u, 11556u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(43848u, 3165u, 1926u), vec3<u32>(0u, 0u, 12953u), vec3<u32>(16881u, 30378u, 18683u), vec3<u32>(6688u, 4294967295u, 60660u), vec3<u32>(53031u, 14358u, 0u), vec3<u32>(1u, 0u, 10063u), vec3<u32>(7879u, 17543u, 1u), vec3<u32>(4294967295u, 1u, 4337u), vec3<u32>(4294967295u, 17472u, 84015u), vec3<u32>(48394u, 64633u, 0u), vec3<u32>(43532u, 65690u, 1u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 25981u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(49831u, 0u, 0u));

var<private> global1: f32 = 1047f;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<f32, 15> = array<f32, 15>(1117f, -1451f, -1718f, -900f, 1000f, -478f, -389f, 444f, -1223f, 1025f, -1000f, 159f, 329f, -606f, 949f);

var<private> global4: Struct_5;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(all(global2.yxw), Struct_2(_wgslsmith_clamp_u32(firstLeadingBit(u_input.c), ~126932u, 39858u), !select(select(global2.xz, vec2<bool>(global2.x, global4.a), vec2<bool>(false, global4.a)), global2.ww, !global2.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.a, 2147483647i, 20674i, u_input.a)), countOneBits(vec4<i32>(36712i, -68793i, u_input.a, 22701i)), vec4<i32>(u_input.a, -2897i, -20562i, u_input.a)) & -vec4<i32>(-777i, u_input.b.x, u_input.a, u_input.b.x)));
    global1 = _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.b.a, var_0.b.a, firstTrailingBit(var_0.b.a), 4294967295u), vec4<u32>(u_input.c | ~var_0.b.a, _wgslsmith_add_u32(0u, abs(u_input.c)), _wgslsmith_sub_u32(u_input.c, 13237u >> (u_input.c % 32u)), var_0.b.a)), 15u)]));
    global0 = array<vec3<u32>, 17>();
    var var_1 = _wgslsmith_div_i32(~firstTrailingBit(_wgslsmith_mod_i32(var_0.b.c.x, -4423i)) ^ var_0.b.c.x, _wgslsmith_dot_vec4_i32(var_0.b.c, var_0.b.c));
    let var_2 = vec2<bool>(global4.a, false);
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(true, Struct_2(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1048u, 37612u), vec2<u32>(arg_2.a, arg_2.a)), 1u), global2.yx, vec4<i32>(-u_input.b.x, max(~47402i, arg_1.b << (18974u % 32u)), 21591i, func_3())));
    var var_1 = var_0.b.c.xx;
    var var_2 = vec3<bool>(false, global2.x == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) <= arg_2.c), (global2.x && !all(vec4<bool>(false, true, true, false))) != any(vec2<bool>(true, true)));
    var_1 = vec2<i32>(~select(select(min(7774i, var_1.x), abs(u_input.a), true), ~1i, !(!var_2.x)), -4970i);
    let var_3 = _wgslsmith_mod_i32(func_3() | _wgslsmith_mod_i32(1i, ~0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a, arg_2.a), vec2<u32>(var_0.b.a, var_0.b.a)) % 32u)), countOneBits(arg_1.b >> ((_wgslsmith_mult_u32(arg_1.a, 0u) << (1u % 32u)) % 32u)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_3 {
    global2 = select(!select(!vec4<bool>(false, false, global2.x, global2.x), !vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, !global2.x, true, global4.a)), select(!select(!vec4<bool>(true, global2.x, global4.a, false), select(vec4<bool>(global2.x, global2.x, global2.x, global4.a), vec4<bool>(true, global4.a, global2.x, true), vec4<bool>(true, false, false, global2.x)), select(vec4<bool>(true, global2.x, global4.a, global4.a), vec4<bool>(global4.a, false, global2.x, global2.x), true)), select(select(!vec4<bool>(global4.a, true, global2.x, global4.a), vec4<bool>(true, true, global2.x, false), global4.a), vec4<bool>(select(true, global2.x, global2.x), true, false, true & global2.x), select(!vec4<bool>(global4.a, global4.a, global4.a, false), !vec4<bool>(false, true, global2.x, false), vec4<bool>(global4.a, false, global2.x, false))), !select(vec4<bool>(global2.x, true, false, false), select(vec4<bool>(false, true, global2.x, false), vec4<bool>(global4.a, true, true, global4.a), global4.a), !vec4<bool>(global2.x, global4.a, global4.a, false))), select(vec4<bool>(true, true, _wgslsmith_f_op_f32(arg_0.c * -183f) <= _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(arg_1.x, 15u)])), select(global2.x, all(vec4<bool>(global2.x, false, global2.x, false)), any(global2.zwy))), select(vec4<bool>(true, !global4.a, true, select(true, true, global2.x)), vec4<bool>(true, global4.a, any(vec2<bool>(false, true)), global2.x), !any(global2.yy)), vec4<bool>(!(global4.a | global2.x), false, -32324i >= _wgslsmith_mod_i32(arg_0.b, 38668i), !global4.a)));
    var var_0 = 1154f;
    var var_1 = vec3<bool>(global4.a, !global2.x, global2.x);
    var var_2 = select(min(vec4<i32>(reverseBits(2147483647i), u_input.a >> (u_input.c % 32u), arg_0.b, u_input.b.x), vec4<i32>(-1i) * -vec4<i32>(39865i, arg_0.b, -1i, 1i)), select(~vec4<i32>(-2147483647i, -20870i, arg_0.b, u_input.a), vec4<i32>(-63468i, 0i, u_input.a, 24161i), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(global4.a, global2.x, true, false))) ^ select(vec4<i32>(-682i, u_input.b.x, 2147483647i, 30352i), -vec4<i32>(arg_0.b, 49446i, u_input.b.x, arg_0.b), !vec4<bool>(true, global2.x, var_1.x, true)), select(!vec4<bool>(global2.x, false, true, false), !select(vec4<bool>(global4.a, true, false, false), vec4<bool>(false, true, global4.a, false), vec4<bool>(true, global2.x, global4.a, false)), false)) << (~(~vec4<u32>(arg_0.a | 14927u, _wgslsmith_dot_vec4_u32(vec4<u32>(64984u, 9112u, arg_1.x, 23755u), vec4<u32>(1u, u_input.c, 52355u, arg_0.a)), arg_1.x, ~68934u)) % vec4<u32>(32u));
    var var_3 = Struct_1(8097u, _wgslsmith_clamp_i32(u_input.a, ~(~(0i ^ var_2.x)), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1188f - -440f) - global3[_wgslsmith_index_u32(~arg_1.x, 15u)])))));
    return Struct_3(vec4<f32>(2840f, 1000f, _wgslsmith_f_op_f32(537f - -301f), -505f));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> vec4<i32> {
    let var_0 = u_input.a;
    return vec4<i32>(max(reverseBits(~var_0), -1i), u_input.a, var_0, ~var_0) << (vec4<u32>(~u_input.c, ~u_input.c, 1u, u_input.c) % vec4<u32>(32u));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(-arg_1);
    global2 = vec4<bool>(all(vec3<bool>(true, !(!arg_0.b.x), !global2.x)), u_input.c > arg_0.a, arg_0.b.x, !((-u_input.b.x & -u_input.b.x) > reverseBits(arg_0.c.x)));
    var var_0 = 1u ^ _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, u_input.c >> (u_input.c % 32u)), func_2(~47276i, Struct_1(u_input.c, arg_0.c.x, global3[_wgslsmith_index_u32(30389u, 15u)]), Struct_1(u_input.c, 1i, global3[_wgslsmith_index_u32(u_input.c, 15u)])).a), _wgslsmith_div_u32(~1u, func_2(-u_input.b.x, Struct_1(9722u, -10820i, 1663f), Struct_1(4294967295u, u_input.a, arg_1)).a));
    let var_1 = u_input.a;
    var var_2 = Struct_4(true, arg_0);
    return Struct_5(all(vec3<bool>(true, false, false)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = func_6(Struct_2(_wgslsmith_div_u32(~0u, arg_3.x), !(!vec2<bool>(true, global2.x)), func_5(func_4(func_2(1i, Struct_1(69712u, arg_0, -731f), Struct_1(arg_3.x, u_input.b.x, 658f)), global0[_wgslsmith_index_u32(4294967295u, 17u)] ^ global0[_wgslsmith_index_u32(arg_3.x, 17u)]), vec2<bool>(true, all(vec2<bool>(global2.x, global2.x))), all(select(vec3<bool>(global2.x, false, global4.a), vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~105058u, 15u)]));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(7608u, 0u), _wgslsmith_mult_vec2_u32(arg_3.xx, vec2<u32>(53068u, 6685u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, 71373u), 32725u), u_input.c)), ~_wgslsmith_mod_vec2_u32(~(~arg_3.xy), vec2<u32>(~u_input.c, ~arg_3.x)));
    var var_2 = !(!var_0.a);
    var var_3 = ~(~vec4<u32>(min(72662u, 38241u), ~arg_3.x, 1u, 14690u));
    var var_4 = vec4<bool>(true, !var_0.a, var_0.a, global2.x);
    return _wgslsmith_mod_u32(func_2(firstLeadingBit(func_3()), func_2(-abs(-7461i), func_2(1i, func_2(arg_2.x, Struct_1(arg_3.x, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 15u)]), Struct_1(var_1, arg_2.x, global3[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_1(var_3.x, -2147483647i, 306f)), Struct_1(~var_3.x, 2147483647i, _wgslsmith_f_op_f32(round(-389f)))), func_2(reverseBits(~1i), func_2(0i & u_input.a, Struct_1(52970u, 0i, global3[_wgslsmith_index_u32(0u, 15u)]), func_2(1i, Struct_1(1u, u_input.a, 707f), Struct_1(arg_3.x, arg_2.x, global3[_wgslsmith_index_u32(var_1, 15u)]))), func_2(arg_2.x, func_2(u_input.b.x, Struct_1(0u, -1i, global3[_wgslsmith_index_u32(1u, 15u)]), Struct_1(var_3.x, -6550i, global3[_wgslsmith_index_u32(58782u, 15u)])), Struct_1(42659u, arg_0, -3304f)))).a, _wgslsmith_sub_u32(var_3.x, _wgslsmith_sub_u32(var_1 | var_3.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(438f + global3[_wgslsmith_index_u32(func_1(-35886i, !vec3<bool>(global4.a && global2.x, true, global4.a), vec4<i32>(-2147483647i, 0i, 2147483647i, firstTrailingBit(u_input.b.x) | -u_input.b.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(23669u << (u_input.c % 32u), 17u)], _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(u_input.c, 17u)], vec3<u32>(u_input.c, 0u, u_input.c))), global0[_wgslsmith_index_u32(~1u, 17u)] >> ((vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(u_input.c, 2548u, u_input.c)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u))), 15u)]);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(global0[_wgslsmith_index_u32(58286u, 17u)]), vec3<u32>(_wgslsmith_mult_u32(u_input.c, 14144u), u_input.c & 74892u, firstTrailingBit(u_input.c))) >> (4294967295u % 32u), 15u)] >= global3[_wgslsmith_index_u32(4294967295u, 15u)];
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.c, 15u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 15u)])) * -604f)) - func_4(Struct_1(_wgslsmith_div_u32(15684u, ~u_input.c), -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(u_input.a, Struct_1(u_input.c, 2147483647i, global3[_wgslsmith_index_u32(1u, 15u)]), Struct_1(1u, u_input.b.x, 513f)).a, ~u_input.c), 15u)]), vec3<u32>(_wgslsmith_mult_u32(~u_input.c, 1u), abs(~u_input.c), ~(~1u))).a.x);
    let var_1 = ~(~(~u_input.c));
    var var_2 = !select(!(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), select(vec4<bool>(global4.a || global4.a, global4.a, true, !global4.a), !select(vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(global2.x, global4.a, global4.a, true), vec4<bool>(false, global2.x, global4.a, false)), global2.x), !vec4<bool>(global4.a & global2.x, global2.x, global4.a, global4.a));
    global4 = func_6(Struct_2(118209u, vec2<bool>(true, var_1 > (u_input.c << (var_1 % 32u))), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, 2147483647i), vec4<i32>(-20458i, -6953i, u_input.a, 31521i), vec4<i32>(u_input.b.x, 2147483647i, 1i, u_input.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1, 15u)] * global3[_wgslsmith_index_u32(func_1(0i, global2.yyz, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -23799i, -29192i), vec4<i32>(u_input.b.x, 0i, u_input.a, 35355i)), abs(vec3<u32>(var_1, u_input.c, 21747u))), 15u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(-1000f + 995f)) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), 15u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1, 15u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32((vec2<i32>(u_input.b.x, 23442i) << (vec2<u32>(93427u, 2447u) % vec2<u32>(32u))) ^ u_input.b.xx, vec2<i32>(43736i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(var_1, 15u)], global3[_wgslsmith_index_u32(var_1, 15u)], global3[_wgslsmith_index_u32(u_input.c, 15u)], global3[_wgslsmith_index_u32(u_input.c, 15u)]))) * vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], 564f, global3[_wgslsmith_index_u32(var_1, 15u)], global3[_wgslsmith_index_u32(32998u, 15u)]))))), vec4<i32>(~(-1i), ~2147483647i, _wgslsmith_mod_i32(49880i, abs(-u_input.b.x)), u_input.a), ~u_input.c);
}

