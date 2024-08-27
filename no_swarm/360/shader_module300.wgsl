struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(879f, -973f, -189f), false, 100884u, vec2<i32>(38263i, i32(-2147483648))), Struct_1(vec3<f32>(-520f, 548f, -2982f), false, 11746u, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<f32>(-527f, 1016f, 432f), true, 93079u, vec2<i32>(-42377i, 1i)), Struct_1(vec3<f32>(-446f, 214f, -493f), false, 17716u, vec2<i32>(2147483647i, -31047i)), Struct_1(vec3<f32>(-664f, -311f, -1124f), true, 2404u, vec2<i32>(2147483647i, -5279i)), Struct_1(vec3<f32>(288f, -1768f, 258f), true, 52696u, vec2<i32>(90278i, 11788i)), Struct_1(vec3<f32>(-1121f, 1590f, -251f), false, 79103u, vec2<i32>(10082i, 0i)), Struct_1(vec3<f32>(-2042f, 1797f, 1892f), false, 0u, vec2<i32>(23530i, -60588i)), Struct_1(vec3<f32>(-1041f, -698f, -1000f), true, 1u, vec2<i32>(2147483647i, 1i)), Struct_1(vec3<f32>(2542f, 722f, 1100f), true, 32577u, vec2<i32>(-1i, 3252i)), Struct_1(vec3<f32>(-339f, -1384f, 539f), true, 75696u, vec2<i32>(59180i, 45009i)), Struct_1(vec3<f32>(-244f, -1172f, 172f), true, 0u, vec2<i32>(-19872i, 2147483647i)), Struct_1(vec3<f32>(1199f, 599f, 588f), false, 4294967295u, vec2<i32>(42015i, 0i)), Struct_1(vec3<f32>(-1096f, -527f, 854f), true, 39370u, vec2<i32>(40977i, 16595i)), Struct_1(vec3<f32>(-1782f, -190f, -1000f), false, 79916u, vec2<i32>(-32471i, 14738i)), Struct_1(vec3<f32>(2259f, 236f, 133f), true, 0u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec3<f32>(997f, 182f, -556f), false, 0u, vec2<i32>(-20694i, 0i)), Struct_1(vec3<f32>(192f, -436f, -812f), false, 16533u, vec2<i32>(6109i, 0i)), Struct_1(vec3<f32>(737f, -1928f, -1528f), false, 1u, vec2<i32>(-38781i, 32919i)), Struct_1(vec3<f32>(-654f, 1478f, 1000f), false, 42733u, vec2<i32>(367i, 0i)), Struct_1(vec3<f32>(-904f, -1518f, 249f), true, 1u, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<f32>(572f, -737f, 2229f), false, 48678u, vec2<i32>(1i, 1i)), Struct_1(vec3<f32>(1571f, 1955f, 875f), true, 32656u, vec2<i32>(-1i, -50794i)), Struct_1(vec3<f32>(476f, 858f, -216f), false, 4294967295u, vec2<i32>(-1i, 40445i)), Struct_1(vec3<f32>(520f, 464f, -134f), false, 4294967295u, vec2<i32>(-15127i, -905i)), Struct_1(vec3<f32>(1398f, -1190f, -105f), true, 42372u, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec3<f32>(128f, 1740f, 2192f), true, 851u, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec3<f32>(657f, 589f, 625f), false, 49295u, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec3<f32>(742f, 1000f, 924f), false, 1u, vec2<i32>(6403i, 0i)), Struct_1(vec3<f32>(-1000f, 642f, -877f), false, 4294967295u, vec2<i32>(5163i, 1i)), Struct_1(vec3<f32>(621f, -729f, -214f), true, 4294967295u, vec2<i32>(41730i, 38163i)));

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: f32 = 248f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global2 = array<Struct_1, 21>();
    let var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, ~arg_0.c), vec2<u32>(~_wgslsmith_div_u32(29381u, 3757u), _wgslsmith_add_u32(_wgslsmith_mult_u32(10985u, arg_0.c), 62020u)));
    global3 = array<vec4<i32>, 11>();
    global0 = array<vec3<bool>, 25>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(step(121f, arg_0.a.x)))) + arg_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_div_f32(-218f, _wgslsmith_f_op_f32(334f * arg_0.a.x))))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~(0u << (select(1u, arg_0.c, arg_0.b) % 32u)), 4294967295u, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~(var_0.x >> (0u % 32u)), 1u << (arg_0.c % 32u)), countOneBits(vec3<u32>(~arg_0.c, ~4294967295u, 54428u))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global1 = array<Struct_1, 31>();
    let var_0 = -18964i;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(925f, -923f, 1000f, -664f))) + vec4<f32>(390f, -332f, -570f, -149f)), vec4<f32>(_wgslsmith_div_f32(-736f, 665f), _wgslsmith_f_op_f32(ceil(-1288f)), -642f, _wgslsmith_f_op_f32(509f - 1023f)), arg_0.x >= _wgslsmith_add_i32(441i, -1i))) - vec4<f32>(1f, 1f, 1f, 1f))));
    global4 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2.x)))));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global3 = array<vec4<i32>, 11>();
    var var_0 = arg_0.b;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x * -833f), arg_1.a.x, ~(i32(-1i) * -1i) == u_input.a)), Struct_1(arg_1.a, var_0.b, firstLeadingBit(_wgslsmith_mult_u32(arg_1.c & arg_0.b.c, 1u)), arg_1.d), arg_0.c, arg_0.b.d.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.a.x)), -955f);
    global0 = array<vec3<bool>, 25>();
    return Struct_3(global0[_wgslsmith_index_u32(arg_1.c, 25u)], Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.x)))), global2[_wgslsmith_index_u32(0u, 21u)], vec2<bool>(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, -27268i), vec3<i32>(var_0.d.x, -2147483647i, -31307i), vec3<i32>(-20702i, 1i, -2147483647i))), !any(var_1.c)), _wgslsmith_div_i32(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 27917i, u_input.a, arg_1.d.x), abs(vec4<i32>(13199i, 13208i, arg_1.d.x, u_input.a))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), -528f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.a.yz))))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    var var_0 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, _wgslsmith_mult_i32(u_input.a, 43383i)), vec3<i32>(u_input.a, -u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, -8668i))), ~(vec3<i32>(u_input.a, 2147483647i, 2147483647i) << (vec3<u32>(7286u, 16767u, 1u) % vec3<u32>(32u))) << (max(func_1(global2[_wgslsmith_index_u32(21616u, 21u)]), func_1(Struct_1(vec3<f32>(-532f, -1141f, -973f), false, 24906u, vec2<i32>(u_input.a, u_input.a)))) % vec3<u32>(32u)));
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(581f))))));
    let var_1 = select(vec4<bool>(true, false, !(!(u_input.a >= 0i)), all(vec3<bool>(true, true, true))), vec4<bool>(select(true, all(vec2<bool>(true, true)), true), (u_input.a >= -u_input.a) | true, any(vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true)), true), vec4<bool>(true, abs(_wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(u_input.a, 2147483647i))) != ~var_0.x, func_4(func_2(Struct_2(-1234f, Struct_1(vec3<f32>(1000f, 428f, 1170f), true, 4294967295u, vec2<i32>(u_input.a, u_input.a)), vec2<bool>(false, true), -2147483647i), Struct_1(vec3<f32>(-1525f, 460f, -241f), false, 40330u, vec2<i32>(u_input.a, -44830i))), _wgslsmith_add_i32(u_input.a, var_0.x), true) && func_4(func_2(Struct_2(699f, global1[_wgslsmith_index_u32(19643u, 31u)], vec2<bool>(true, false), var_0.x), global2[_wgslsmith_index_u32(1u, 21u)]), var_0.x, true), true || select(true, func_4(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 25u)], Struct_2(-776f, global1[_wgslsmith_index_u32(40586u, 31u)], vec2<bool>(true, true), var_0.x), vec2<f32>(326f, -296f)), u_input.a, false), all(vec4<bool>(false, true, false, true)))));
    var var_2 = abs(vec4<u32>(~_wgslsmith_div_u32(0u << (0u % 32u), 65318u), 7538u, 7540u, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1054f * 1000f), func_2(Struct_2(-486f, Struct_1(vec3<f32>(571f, -579f, 470f), true, var_2.x, vec2<i32>(u_input.a, var_0.x)), var_1.zz, u_input.a), Struct_1(vec3<f32>(112f, -153f, 994f), var_1.x, 5022u, vec2<i32>(var_0.x, 38077i))).c.x, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1445f)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-574f, -194f, var_1.x)) - -2486f))), ~var_2.x, firstLeadingBit(~var_2.x << (~var_2.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1590f), -1451f, -1410f), -2371f);
}

