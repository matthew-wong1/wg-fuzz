struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = !global0[_wgslsmith_index_u32(u_input.c, 21u)];
    var_0 = vec4<bool>(var_0.x, all(select(var_0.wz, var_0.zw, false)), !((abs(1u) >> (~u_input.b.x % 32u)) > u_input.c), true);
    let var_1 = Struct_4(-1024f, Struct_2(Struct_1(any(var_0.xz), ~vec4<u32>(u_input.b.x, 69674u, u_input.b.x, u_input.c) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), -32082i, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), u_input.c, Struct_1(var_0.x, vec4<u32>(u_input.c, ~u_input.b.x, u_input.a, 4259u), u_input.d, true)), !vec3<bool>(!(var_0.x == var_0.x), all(var_0.xx), all(var_0.ww)), Struct_2(Struct_1(false, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, 0u, 24483u)), firstTrailingBit(u_input.a), ~u_input.a, ~u_input.b.x), arg_0, ~u_input.c > u_input.c), u_input.c, Struct_1(var_0.x, _wgslsmith_add_vec4_u32(~vec4<u32>(52275u, 34358u, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.b.x) & vec4<u32>(1u, 1u, 0u, u_input.b.x)), -50267i, any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-75172i, arg_0, var_1.b.a.c, arg_0), countOneBits(vec4<i32>(-6019i, 0i, 0i, 36140i))), -2147483647i), 1i) | -(vec2<i32>(arg_0, ~2419i) << (vec2<u32>(abs(u_input.b.x), abs(4294967295u)) % vec2<u32>(32u)));
    var var_3 = -1i;
    return ~(~reverseBits(1u) ^ ~u_input.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> vec3<bool> {
    let var_0 = !vec2<bool>(!select(arg_1, true, all(vec2<bool>(false, arg_1))), true);
    global0 = array<vec4<bool>, 21>();
    let var_1 = -33370i;
    var var_2 = Struct_3(select(select(u_input.b, ~vec2<u32>(4294967295u, 81974u), vec2<bool>(!arg_1, any(vec2<bool>(var_0.x, false)))), vec2<u32>(17565u, 32602u), !(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0))), 15983u);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -418f);
    return vec3<bool>(select(var_0.x, arg_1 && any(var_0), !any(vec2<bool>(arg_1, arg_1))), arg_1, any(!(!select(var_0, vec2<bool>(true, true), var_0))));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), arg_1), Struct_2(arg_0.b, arg_0.a.a.x, arg_0.b), func_4(~vec3<u32>(func_3(2147483647i), ~4294967295u, 50354u), 0i > (arg_0.b.c << (1u % 32u))), Struct_2(Struct_1(select(true, true, true), abs(arg_0.b.b), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0.b.c, 2147483647i)), firstLeadingBit(vec2<i32>(10442i, 63147i))), false), _wgslsmith_sub_u32(arg_0.b.b.x, _wgslsmith_mod_u32(abs(u_input.a), ~4294967295u)), Struct_1(!arg_2, arg_0.b.b, arg_0.b.c, arg_0.b.a)));
    let var_1 = -12469i;
    let var_2 = var_0.b.c.b.ywz;
    let var_3 = var_0.b;
    var var_4 = ~(-(~abs(max(vec4<i32>(u_input.d, 2147483647i, -1i, -15193i), vec4<i32>(var_1, var_0.d.a.c, var_1, -2147483647i)))));
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_div_f32(439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(622f, 905f, arg_0.b.a)) * _wgslsmith_f_op_f32(f32(-1f) * -944f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1309f, -1522f)), _wgslsmith_f_op_f32(f32(-1f) * -874f))))))));
    let var_1 = ((firstLeadingBit(vec3<i32>(1i, 51967i, arg_0.b.c)) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(-43715i, 8778i, 1i), vec3<i32>(u_input.d, -26144i, arg_0.b.c) >> (arg_0.b.b.yxx % vec3<u32>(32u)))) << (countOneBits(max(vec3<u32>(21334u, arg_3, arg_0.b.b.x) << (vec3<u32>(arg_0.b.b.x, arg_2.x, arg_3) % vec3<u32>(32u)), vec3<u32>(1u, arg_3, 73067u))) % vec3<u32>(32u))) | ~reverseBits(vec3<i32>(u_input.d, -14950i, -2147483647i) & ~vec3<i32>(arg_0.b.c, arg_0.b.c, 12377i));
    var var_2 = 57202u;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, arg_1), arg_1);
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, -349f)), _wgslsmith_f_op_f32(var_0.x + -988f), _wgslsmith_f_op_f32(-1045f - var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -674f, 424f))))))));
    return any(!select(!vec3<bool>(false, arg_0.b.a, false), select(!vec3<bool>(false, false, arg_0.b.a), select(vec3<bool>(arg_0.b.d, false, arg_0.b.a), vec3<bool>(true, true, arg_0.b.a), vec3<bool>(arg_0.b.a, false, arg_0.b.a)), any(vec2<bool>(arg_0.b.d, true))), vec3<bool>(true, arg_0.b.a & false, !arg_0.b.d)));
}

fn func_6(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4) -> u32 {
    global0 = array<vec4<bool>, 21>();
    var var_0 = Struct_5(func_2(func_2(func_2(Struct_5(Struct_3(u_input.b, 42357u), Struct_1(true, vec4<u32>(arg_2.b.b, u_input.b.x, u_input.a, 16130u), arg_2.d.c.c, arg_0)), _wgslsmith_f_op_f32(arg_2.a - arg_2.a), arg_0), -940f, _wgslsmith_f_op_f32(ceil(arg_2.a)) == _wgslsmith_f_op_f32(f32(-1f) * -2169f)), _wgslsmith_f_op_f32(-arg_2.a), true).a, arg_2.d.c);
    global0 = array<vec4<bool>, 21>();
    var var_1 = arg_2.c.yx;
    let var_2 = select(_wgslsmith_clamp_i32(arg_1.x, ~26642i, ~(~var_0.b.c)), -54762i, all(select(arg_2.c, arg_2.c, all(vec2<bool>(arg_0, var_0.b.a)))));
    return 1915u;
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<bool>, 21>();
    let var_0 = u_input.c;
    global0 = array<vec4<bool>, 21>();
    let var_1 = _wgslsmith_sub_u32(~func_6(func_5(func_2(Struct_5(Struct_3(vec2<u32>(11177u, u_input.b.x), var_0), Struct_1(false, vec4<u32>(33847u, u_input.c, 16833u, var_0), 57510i, false)), 614f, true), u_input.a, u_input.b, 0u), vec3<i32>(_wgslsmith_div_i32(14645i, -2147483647i), _wgslsmith_div_i32(u_input.d, -12154i), 0i), Struct_4(_wgslsmith_f_op_f32(-305f - 1000f), Struct_2(Struct_1(true, vec4<u32>(61805u, 6210u, 4294967295u, 4294967295u), 1i, false), 0u, Struct_1(false, vec4<u32>(26949u, var_0, 79771u, u_input.a), u_input.d, true)), vec3<bool>(true, false, true), Struct_2(Struct_1(true, vec4<u32>(u_input.a, var_0, var_0, 1u), 1827i, false), 4294967295u, Struct_1(false, vec4<u32>(1u, 0u, u_input.b.x, 1u), u_input.d, false)))), u_input.c);
    let var_2 = ~(-u_input.d);
    return Struct_2(func_2(Struct_5(Struct_3(firstTrailingBit(vec2<u32>(46131u, 1u)), 1u), func_2(func_2(Struct_5(Struct_3(vec2<u32>(u_input.a, var_1), var_0), Struct_1(false, vec4<u32>(var_1, 5993u, 32284u, u_input.a), -41527i, false)), -1026f, true), _wgslsmith_f_op_f32(f32(-1f) * -845f), func_2(Struct_5(Struct_3(u_input.b, var_1), Struct_1(true, vec4<u32>(var_0, var_1, var_1, var_0), u_input.d, true)), 1027f, true).b.a).b), -596f, any(select(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(select(4294967295u, u_input.b.x, false), 21u)], true))).b, _wgslsmith_sub_u32(4294967295u, u_input.b.x) ^ ~5736u, Struct_1(true, firstTrailingBit(~(vec4<u32>(45586u, 38641u, 0u, 0u) << (vec4<u32>(0u, 0u, var_1, 0u) % vec4<u32>(32u)))), i32(-1i) * -2147483647i, true));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.c.b.xz;
    var var_1 = ~(~(~(~min(4294967295u, arg_1.a.b.x))));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    var_1 = 4294967295u;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.d, func_7(func_1(), func_1()));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-207f + -304f), _wgslsmith_f_op_f32(f32(-1f) * -117f))))) + -454f));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1339f)))));
    var_0 = u_input.d;
    let var_3 = select(-(vec3<i32>(_wgslsmith_mod_i32(u_input.d, 35078i), -30331i, u_input.d) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -2147483647i, 37590i), vec3<i32>(u_input.d, 22174i, -15059i))), vec3<i32>(-abs(u_input.d) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 37038u), u_input.b) % 32u), ~u_input.d, ~_wgslsmith_mod_i32(u_input.d ^ u_input.d, -58034i)), true);
    var var_4 = ~1u;
    var var_5 = Struct_3(_wgslsmith_clamp_vec2_u32(abs(u_input.b), min(u_input.b, _wgslsmith_clamp_vec2_u32(select(u_input.b, vec2<u32>(1u, 50720u), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(u_input.b, u_input.b), select(vec2<u32>(10387u, u_input.b.x), u_input.b, true))), u_input.b), firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(70997u, u_input.a)), u_input.a)));
    var_0 = var_3.x;
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 35379i, 15721i), -(~vec3<i32>(23480i, -3487i, var_3.x))) >> (~(~(~var_5.a.x)) % 32u), ~(~vec3<u32>(var_5.a.x, 17445u, var_5.a.x)), var_3.x << (firstTrailingBit(~var_5.a.x) % 32u));
}

