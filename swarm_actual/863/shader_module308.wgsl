struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(false, Struct_1(vec4<bool>(true, true, true, false), true, 4294967295u, 1u), true), Struct_3(false, Struct_1(vec4<bool>(false, true, false, false), true, 4294967295u, 66029u), true), Struct_3(false, Struct_1(vec4<bool>(false, false, true, false), true, 0u, 1u), false), Struct_3(true, Struct_1(vec4<bool>(false, true, false, true), true, 13297u, 55404u), false), Struct_3(false, Struct_1(vec4<bool>(false, false, false, true), false, 69432u, 4294967295u), true), Struct_3(false, Struct_1(vec4<bool>(false, false, false, false), true, 356u, 0u), true), Struct_3(true, Struct_1(vec4<bool>(false, false, true, true), true, 12056u, 4294967295u), true), Struct_3(true, Struct_1(vec4<bool>(false, true, true, true), false, 40747u, 11096u), false), Struct_3(true, Struct_1(vec4<bool>(true, true, true, true), true, 29733u, 4294967295u), true), Struct_3(true, Struct_1(vec4<bool>(false, true, false, true), true, 62699u, 1u), true), Struct_3(false, Struct_1(vec4<bool>(false, false, false, true), false, 36961u, 25627u), false), Struct_3(false, Struct_1(vec4<bool>(true, false, false, false), false, 0u, 42859u), true), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), true, 2586u, 64045u), false), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), true, 1u, 33498u), false), Struct_3(false, Struct_1(vec4<bool>(true, true, false, false), false, 4294967295u, 99246u), false), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), true, 77507u, 42331u), false), Struct_3(true, Struct_1(vec4<bool>(true, true, true, false), true, 1u, 25510u), true), Struct_3(false, Struct_1(vec4<bool>(true, true, true, false), true, 0u, 1u), false), Struct_3(true, Struct_1(vec4<bool>(false, true, true, true), false, 44912u, 1u), true), Struct_3(false, Struct_1(vec4<bool>(false, false, true, false), true, 145193u, 1u), false), Struct_3(true, Struct_1(vec4<bool>(false, true, false, true), true, 0u, 66152u), false), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), false, 0u, 11104u), false), Struct_3(false, Struct_1(vec4<bool>(true, true, false, false), false, 54724u, 10041u), true), Struct_3(true, Struct_1(vec4<bool>(true, false, true, false), true, 40798u, 77020u), true), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), true, 110017u, 15994u), true), Struct_3(false, Struct_1(vec4<bool>(true, false, true, false), false, 4294967295u, 0u), false), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), false, 46741u, 1u), true), Struct_3(false, Struct_1(vec4<bool>(false, false, true, true), false, 1u, 44227u), false));

var<private> global1: array<Struct_4, 10>;

var<private> global2: array<vec4<bool>, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = u_input.a.x;
    global2 = array<vec4<bool>, 21>();
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1612f, -107f)), -129f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f) + _wgslsmith_f_op_f32(-780f + 703f)), -688f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -354f)), vec4<f32>(1f, 1f, 1f, 1f))), arg_1.c, Struct_1(arg_1.a, arg_1.a.x, min(~firstTrailingBit(arg_1.d), _wgslsmith_div_u32(arg_1.c, ~arg_1.c)), arg_1.d), arg_1);
    global0 = array<Struct_3, 28>();
    let var_2 = Struct_3(arg_1.b, Struct_1(!select(select(var_1.e.a, var_1.e.a, vec4<bool>(false, arg_1.a.x, false, false)), !arg_1.a, !vec4<bool>(true, var_1.d.b, arg_1.b, arg_1.a.x)), false, ~(max(45346u, arg_1.c) ^ 4294967295u), 0u), arg_1.a.x);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(13996u, 35847u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.d, var_2.b.d) >> (vec2<u32>(2215u, 1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1076u, 1u), max(vec2<u32>(var_1.d.c, var_1.d.d), vec2<u32>(var_2.b.d, arg_1.d)))) >> (firstLeadingBit(~select(vec2<u32>(22u, 4294967295u), vec2<u32>(0u, 54817u), arg_1.a.x)) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(!select(!arg_3, select(arg_3, vec4<bool>(arg_3.x, arg_2.x, arg_3.x, arg_2.x), arg_2.x && arg_3.x), arg_3.x), 27796u < func_3(0i, Struct_1(arg_3, true, 1u, select(78945u, 25285u, arg_3.x))), 5071u, reverseBits(1u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(52682u, 69215u, 34909u, 7444u), vec4<u32>(1u, 0u, 1u, 16347u)) % 32u)));
    global2 = array<vec4<bool>, 21>();
    global1 = array<Struct_4, 10>();
    let var_1 = 0i;
    global2 = array<vec4<bool>, 21>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 505f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 - arg_1), arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, 350f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, arg_1), false))))), countOneBits(abs(~var_0.d)), var_0, var_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-4028i, -46814i), -u_input.a), ~1i), ~(~(~u_input.a.x))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(arg_2, u_input.a.x)), vec2<i32>(-(~u_input.a.x), reverseBits(~(-34387i))), u_input.a));
    let var_1 = var_0.x | select(-9667i, select(~u_input.a.x, -_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.a.x, var_0.x)), arg_0.e.a.x), arg_0.d.a.x);
    let var_2 = Struct_1(arg_0.d.a, -802f >= arg_0.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.d.c, ~arg_0.d.d), ~_wgslsmith_add_vec2_u32(vec2<u32>(65229u, 26180u), vec2<u32>(arg_0.d.c, arg_0.e.d))), arg_0.c), arg_0.d.d);
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    return arg_0.e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_3(arg_1.a, func_2(reverseBits(~(-u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-499f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) + _wgslsmith_f_op_f32(-752f - -767f))), arg_0.a.xy, vec4<bool>(any(arg_0.a), true, any(select(global2[_wgslsmith_index_u32(84621u, 21u)], vec4<bool>(arg_1.a, arg_0.b, true, false), arg_0.a)), true | func_4(Struct_2(vec2<f32>(729f, 438f), vec4<f32>(1000f, -329f, 1000f, 1587f), arg_0.d, Struct_1(global2[_wgslsmith_index_u32(44492u, 21u)], arg_0.b, arg_0.d, 1u), Struct_1(arg_0.a, arg_1.a, 74961u, arg_0.c)), vec3<f32>(365f, 634f, -1000f), -24372i).b)).e, arg_0.a.x);
    let var_1 = global1[_wgslsmith_index_u32(41712u, 10u)];
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(u_input.a, countOneBits(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a)))), -1362f, var_0.b.a.yy, select(vec4<bool>(false, true, false, func_2(-4149i, _wgslsmith_f_op_f32(f32(-1f) * -956f), arg_0.a.yz, func_2(u_input.a.x, 878f, vec2<bool>(var_1.a, true), global2[_wgslsmith_index_u32(1u, 21u)]).e.a).d.a.x), vec4<bool>(!select(true, var_1.a, arg_0.b), var_0.a, 2147483647i == u_input.a.x, all(vec4<bool>(false, false, false, true))), arg_0.a)).b.wzx;
    global0 = array<Struct_3, 28>();
    let var_3 = select(func_2(-_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(6473i, u_input.a.x)), var_2.x, vec2<bool>(false, all(vec4<bool>(false, false, false, true))), arg_0.a).e.a, vec4<bool>(true, true, all(!vec4<bool>(arg_1.a, false, true, arg_1.a)), !arg_0.a.x), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(var_2.yz - var_2.yy), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(sign(111f)), _wgslsmith_f_op_f32(var_2.x - -241f), _wgslsmith_f_op_f32(var_2.x - -432f)), ~arg_0.d, var_0.b, func_2(~u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.a.yz, arg_0.a).e), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - var_2.x), 1000f)), 569f, var_2.x), u_input.a.x).a.x);
    return _wgslsmith_f_op_f32(trunc(-1717f));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_3, 28>();
    let var_1 = arg_0;
    global0 = array<Struct_3, 28>();
    global2 = array<vec4<bool>, 21>();
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(func_4(func_2(u_input.a.x, 946f, var_0, vec4<bool>(var_0.x, false, false, false)), vec3<f32>(1591f, -441f, -106f), _wgslsmith_dot_vec4_i32(vec4<i32>(47033i, 23839i, 3052i, 20649i), vec4<i32>(var_1, arg_0, -11652i, -2147483647i))), Struct_4(var_0.x))), 1375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f))))), -3251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1775f * _wgslsmith_div_f32(538f, -894f)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = func_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -20696i), arg_0) ^ -1i, -848f, vec2<bool>(false & (countOneBits(arg_0.x) >= arg_0.x), func_2(~_wgslsmith_sub_i32(arg_0.x, 1i), _wgslsmith_div_f32(arg_3, 2601f), select(func_2(u_input.a.x, 607f, vec2<bool>(false, arg_1.e.a.x), vec4<bool>(arg_1.d.b, true, false, arg_1.e.a.x)).d.a.yy, func_2(1i, 1000f, vec2<bool>(true, true), vec4<bool>(arg_1.e.b, arg_1.d.b, arg_1.e.a.x, true)).d.a.zw, arg_1.d.a.x), vec4<bool>(true, any(global2[_wgslsmith_index_u32(4294967295u, 21u)]), true, arg_2 <= arg_2)).d.a.x), !arg_1.d.a);
    var var_1 = global0[_wgslsmith_index_u32(min(1u, arg_1.d.d), 28u)];
    global2 = array<vec4<bool>, 21>();
    global2 = array<vec4<bool>, 21>();
    return Struct_1(var_0.e.a, arg_1.e.b, 1u, _wgslsmith_sub_u32(reverseBits(~1u), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-_wgslsmith_sub_vec2_i32(-(~u_input.a), _wgslsmith_add_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a, u_input.a))), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1196f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1247f, -173f, -1351f, -730f)) + _wgslsmith_f_op_vec4_f32(func_1(-66336i))))), 4294967295u, func_2(-27226i, -1000f, vec2<bool>(select(true, false, true), true), vec4<bool>(true, 2147483647i == u_input.a.x, func_2(u_input.a.x, -1000f, vec2<bool>(false, false), global2[_wgslsmith_index_u32(0u, 21u)]).d.b, any(vec3<bool>(false, true, true)))).d, func_2(-1i, 1669f, select(vec2<bool>(true, true), vec2<bool>(false, false), true), global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(40912u, 40470u)), 21u)]).e), 14002u >> (func_3(-1i, func_4(func_2(u_input.a.x, 1010f, vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-232f, -289f, 870f))), -1i)) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -678f))));
    var_0 = Struct_1(global2[_wgslsmith_index_u32(func_3(_wgslsmith_add_i32(abs(u_input.a.x) & -u_input.a.x, -abs(u_input.a.x)), func_4(func_2(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -881f), vec2<bool>(false, true), !vec4<bool>(var_0.b, false, true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1336f, -1574f) * vec3<f32>(-651f, -1138f, 1880f)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, 24023i, u_input.a.x), vec4<i32>(0i, u_input.a.x, 1i, 2147483647i)))), 21u)], func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 214f), vec2<f32>(1387f, -525f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-659f, 1886f, 1000f, -152f), vec4<f32>(1320f, -185f, 217f, 690f), global2[_wgslsmith_index_u32(var_0.d, 21u)])))), firstLeadingBit(~0u), func_6(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), Struct_2(vec2<f32>(2593f, -549f), vec4<f32>(-238f, -719f, 716f, -1609f), 4294967295u, Struct_1(global2[_wgslsmith_index_u32(var_0.d, 21u)], var_0.a.x, var_0.c, var_0.d), Struct_1(var_0.a, var_0.a.x, var_0.d, var_0.d)), 1u, _wgslsmith_f_op_f32(max(-1164f, -426f))), func_2(u_input.a.x >> (44408u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -2494f), !vec2<bool>(var_0.b, true), var_0.a).e), vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(339f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(396f)), -946f)), u_input.a.x).b, 1u ^ var_0.c, ~firstLeadingBit(var_0.c));
    let var_1 = 4387u;
    var var_2 = func_2(u_input.a.x, _wgslsmith_f_op_f32(sign(720f)), !(!vec2<bool>(var_0.b, var_0.a.x)), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(select(var_1, ~4294967295u, false), 3882u & abs(var_0.d), var_0.d), 21u)]).d.a.zyz;
    let var_3 = func_6(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a) & vec2<i32>(u_input.a.x, u_input.a.x), ~(-u_input.a)) >> (select(~(~vec2<u32>(var_1, 4294967295u)), vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), 1u), true) % vec2<u32>(32u)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-581f, -948f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1081f + 178f)))), vec4<f32>(_wgslsmith_f_op_f32(666f - func_2(u_input.a.x, 521f, var_2.xy, global2[_wgslsmith_index_u32(var_0.d, 21u)]).a.x), 1776f, _wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(f32(-1f) * -1107f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-175f, -1590f)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.d, var_0.d), vec2<u32>(26335u, 4294967295u)) ^ 4294967295u, Struct_1(global2[_wgslsmith_index_u32(~var_1 ^ func_6(u_input.a, Struct_2(vec2<f32>(399f, 646f), vec4<f32>(283f, 299f, 495f, -348f), 31426u, Struct_1(var_0.a, false, var_0.c, var_1), Struct_1(vec4<bool>(false, true, var_0.a.x, var_0.b), var_0.b, 4294967295u, var_0.d)), var_1, 961f).c, 21u)], false, min(_wgslsmith_div_u32(var_0.d, 0u), 1u), func_6(u_input.a >> (vec2<u32>(4294967295u, 92238u) % vec2<u32>(32u)), func_2(u_input.a.x, 530f, var_0.a.zw, vec4<bool>(var_0.b, var_2.x, var_2.x, true)), max(28603u, 1u), _wgslsmith_f_op_f32(-1104f + -1268f)).d), Struct_1(func_2(u_input.a.x, _wgslsmith_f_op_f32(1583f + -1000f), !var_2.zz, vec4<bool>(true, var_0.b, true, var_2.x)).d.a, var_2.x, firstTrailingBit(var_0.c), func_2(i32(-1i) * -2147483647i, 424f, select(vec2<bool>(var_2.x, false), var_2.zz, vec2<bool>(true, true)), vec4<bool>(true, true, var_2.x, false)).d.c)), func_3(u_input.a.x, Struct_1(var_0.a, func_6(u_input.a, Struct_2(vec2<f32>(518f, -346f), vec4<f32>(227f, 817f, 285f, -2104f), var_1, Struct_1(var_0.a, false, var_1, var_0.d), Struct_1(var_0.a, false, var_0.d, var_1)), var_0.d, -1745f).b, ~var_0.c, abs(4294967295u))) ^ var_1, 2046f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(-2147483647i | u_input.a.x, 2652f, !func_4(Struct_2(vec2<f32>(236f, -2548f), vec4<f32>(661f, 538f, -784f, -718f), var_0.d, var_3, var_3), vec3<f32>(232f, -1082f, -510f), 2147483647i).a.xx, vec4<bool>(true, true, true, true)).b.x));
}

