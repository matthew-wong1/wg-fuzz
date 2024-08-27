struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = array<vec3<i32>, 30>();
    return ~1u;
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_u32(select(26160u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 11415u, 6739u, 83141u), vec4<u32>(1u, 1u, 1u, 1u)), 1u), true), _wgslsmith_add_u32(func_3(), ~93917u));
    let var_2 = arg_0;
    let var_3 = var_0.a.b.x;
    return Struct_3(Struct_2(true, vec3<i32>(u_input.a.x, ~var_0.a.e, u_input.a.x), 1i, abs(-vec3<i32>(var_0.b, 0i, -2147483647i)), var_2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -8969i, 6614i), var_2.a.d.wwy << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), arg_0.a.e, Struct_1(!vec4<bool>(!var_0.c, true, var_0.c, true), var_0.a.b, arg_0.a.a.zw, -select(~vec4<i32>(11844i, var_0.b, 28263i, 38718i), vec4<i32>(var_2.b, var_0.b, arg_0.a.e, arg_0.a.e), !arg_0.c), ~arg_0.a.e), Struct_2(true, ~global0[_wgslsmith_index_u32(~1u, 30u)], -abs(_wgslsmith_add_i32(41266i, -1i)), var_2.a.d.xzx, Struct_1(var_0.a.a, arg_0.a.b, vec2<bool>(true, var_0.c), _wgslsmith_div_vec4_i32(-var_2.a.d, ~arg_0.a.d), max(_wgslsmith_add_i32(1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, 0i, arg_0.a.e, var_2.b), vec4<i32>(1i, -31435i, var_0.a.d.x, var_0.b))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> Struct_3 {
    var var_0 = vec4<u32>(~_wgslsmith_clamp_u32(abs(4294967295u), ~arg_0.c.x, _wgslsmith_mod_u32(arg_0.a, 37729u)) >> (73344u % 32u), firstLeadingBit(~countOneBits(_wgslsmith_sub_u32(0u, arg_0.c.x))), ~(0u | ~arg_0.a), ~_wgslsmith_dot_vec3_u32(arg_0.c.zwx, ~(arg_0.c.yzz << (vec3<u32>(19693u, arg_0.a, 18612u) % vec3<u32>(32u)))));
    let var_1 = all(select(!select(arg_1.a.a, !vec4<bool>(true, true, arg_1.c, arg_0.b.d.a.x), false), arg_0.b.a.e.a, select(!select(arg_1.a.a, vec4<bool>(true, arg_1.c, arg_0.b.a.e.a.x, true), arg_0.b.d.a), !(!arg_0.b.e.e.a), !arg_1.a.a)));
    var var_2 = arg_0.d.b.x;
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    return func_2(arg_1);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 30>();
    var var_0 = vec3<f32>(arg_0.b.a.e.b.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -749f));
    let var_1 = func_1(arg_0, Struct_5(func_1(arg_0, Struct_5(Struct_1(arg_0.d.a, vec2<f32>(-566f, -1845f), arg_0.b.e.e.a.yz, arg_0.d.d, u_input.a.x), firstLeadingBit(u_input.a.x), true)).a.e, reverseBits(u_input.a.x), any(select(arg_0.b.e.e.c, !arg_0.b.e.e.c, !arg_0.d.c.x)))).a;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(225f, var_0.x, var_1.e.b.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.e.b.x, -142f, -970f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, -1143f, var_1.e.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, 319f, var_1.e.b.x))))));
    var_0 = vec3<f32>(func_2(Struct_5(func_1(arg_0, Struct_5(arg_0.d, u_input.a.x, true)).a.e, countOneBits(-2147483647i), true)).d.b.x, _wgslsmith_f_op_f32(floor(-498f)), _wgslsmith_f_op_f32(var_0.x + var_0.x));
    return Struct_1(select(!func_1(arg_0, Struct_5(var_1.e, arg_0.d.d.x, var_1.a)).e.e.a, var_1.e.a, !(arg_1.x == ~arg_0.c.x)), _wgslsmith_f_op_vec2_f32(var_1.e.b - arg_0.b.d.b), vec2<bool>(true, true), arg_0.d.d, -var_1.d.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<vec3<i32>, 30>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x))), -102f, _wgslsmith_f_op_f32(ceil(arg_0.b.x)), arg_0.b.x));
    var var_2 = -((-abs(vec4<i32>(19226i, -2147483647i, arg_0.d.x, 1i)) << (~(~vec4<u32>(arg_1, arg_1, 85339u, arg_1)) % vec4<u32>(32u))) >> (~vec4<u32>(1u, _wgslsmith_clamp_u32(arg_1, 0u, 35190u), _wgslsmith_add_u32(arg_1, 17235u), _wgslsmith_div_u32(arg_1, arg_1)) % vec4<u32>(32u)));
    let var_3 = 49712i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(Struct_4(_wgslsmith_mult_u32(arg_1, arg_1), func_2(Struct_5(Struct_1(arg_0.a, arg_0.b, arg_0.a.yw, vec4<i32>(-21172i, u_input.a.x, var_2.x, -1i), -1i), 1i, arg_0.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(4294967295u, 0u, arg_1, 0u)), func_4(Struct_4(0u, Struct_3(Struct_2(arg_0.a.x, arg_0.d.wxz, var_2.x, vec3<i32>(-1i, 40112i, var_2.x), arg_0), var_2.x, -1i, arg_0, Struct_2(true, var_2.zxw, -32803i, vec3<i32>(arg_0.e, 2147483647i, u_input.a.x), arg_0)), vec4<u32>(1u, arg_1, arg_1, 4294967295u), Struct_1(vec4<bool>(false, arg_0.c.x, arg_0.a.x, false), vec2<f32>(var_0, -1000f), arg_0.c, arg_0.d, var_3), arg_0.c.x), vec3<u32>(17823u, 1u, arg_1), vec4<u32>(4342u, arg_1, arg_1, arg_1)), false), Struct_5(func_2(Struct_5(Struct_1(arg_0.a, var_1.xy, vec2<bool>(arg_0.a.x, arg_0.c.x), arg_0.d, var_3), 37708i, true)).e.e, u_input.a.x, true)).e.e.b.x), _wgslsmith_f_op_f32(trunc(594f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 30>();
    var var_0 = 9945u | _wgslsmith_div_u32(min(54584u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56937u), vec2<u32>(1u, 10429u))), ~countOneBits(1u));
    let var_1 = vec2<f32>(1032f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), -444f, true)))));
    var var_2 = _wgslsmith_f_op_f32(func_5(func_4(Struct_4(14420u, func_1(Struct_4(3660u, Struct_3(Struct_2(false, vec3<i32>(10954i, -36577i, 1i), u_input.a.x, vec3<i32>(u_input.a.x, -7426i, u_input.a.x), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-2802f, -854f), vec2<bool>(true, false), vec4<i32>(-56669i, u_input.a.x, -1i, -2147483647i), u_input.a.x)), 0i, u_input.a.x, Struct_1(vec4<bool>(true, true, true, false), var_1, vec2<bool>(false, true), vec4<i32>(2147483647i, u_input.a.x, 4157i, u_input.a.x), u_input.a.x), Struct_2(false, global0[_wgslsmith_index_u32(54958u, 30u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 30u)], Struct_1(vec4<bool>(true, false, true, false), var_1, vec2<bool>(true, false), vec4<i32>(-1i, -1i, 1i, 0i), -35127i))), vec4<u32>(48987u, 4294967295u, 23300u, 11032u), Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(380f, -2424f), vec2<bool>(true, true), vec4<i32>(44720i, 19391i, -25453i, u_input.a.x), u_input.a.x), false), Struct_5(Struct_1(vec4<bool>(true, false, true, false), var_1, vec2<bool>(true, false), vec4<i32>(96463i, -8455i, -2147483647i, u_input.a.x), 26045i), u_input.a.x, false)), select(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(0u, 1u, 13132u, 0u), vec4<u32>(4294967295u, 1u, 28039u, 18467u), true), true), func_2(Struct_5(Struct_1(vec4<bool>(false, true, false, false), var_1, vec2<bool>(false, true), vec4<i32>(u_input.a.x, -18939i, 18701i, 40037i), u_input.a.x), 1i, false)).a.e, !any(vec3<bool>(false, true, false))), vec3<u32>(~85355u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 103655u), vec2<u32>(0u, 54001u)), 0u) | vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(~vec4<u32>(8579u, 70925u, 32989u, 100552u))), ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(66069u, 1u), _wgslsmith_clamp_u32(27466u, 0u, 91540u)))));
    var_2 = _wgslsmith_f_op_f32(func_5(func_1(Struct_4(_wgslsmith_mult_u32(1u, 1u), func_1(Struct_4(17447u, Struct_3(Struct_2(true, global0[_wgslsmith_index_u32(1u, 30u)], -2147483647i, global0[_wgslsmith_index_u32(0u, 30u)], Struct_1(vec4<bool>(true, false, true, false), var_1, vec2<bool>(false, false), vec4<i32>(u_input.a.x, 40855i, u_input.a.x, -27741i), u_input.a.x)), u_input.a.x, -2147483647i, Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(var_1.x, -728f), vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), Struct_2(true, global0[_wgslsmith_index_u32(1u, 30u)], u_input.a.x, vec3<i32>(2147483647i, -1i, u_input.a.x), Struct_1(vec4<bool>(true, false, false, true), var_1, vec2<bool>(false, true), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), -13692i))), vec4<u32>(60379u, 4294967295u, 4294967295u, 1u), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(var_1.x, 1184f), vec2<bool>(true, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), u_input.a.x), true), Struct_5(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-1000f, var_1.x), vec2<bool>(false, true), vec4<i32>(4873i, u_input.a.x, u_input.a.x, u_input.a.x), -3830i), 15368i, true)), vec4<u32>(~4294967295u, reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(43511u, 1u, 1u), vec3<u32>(66859u, 4294967295u, 26509u)), ~9895u), func_4(Struct_4(4294967295u, Struct_3(Struct_2(true, vec3<i32>(25654i, 54313i, u_input.a.x), -2147483647i, global0[_wgslsmith_index_u32(26117u, 30u)], Struct_1(vec4<bool>(true, false, true, false), var_1, vec2<bool>(true, false), vec4<i32>(48633i, u_input.a.x, u_input.a.x, -17841i), 5234i)), u_input.a.x, -66811i, Struct_1(vec4<bool>(true, true, false, false), var_1, vec2<bool>(true, false), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), u_input.a.x), Struct_2(false, global0[_wgslsmith_index_u32(49805u, 30u)], u_input.a.x, vec3<i32>(u_input.a.x, 18571i, -16045i), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(-1138f, var_1.x), vec2<bool>(true, true), vec4<i32>(1i, u_input.a.x, -1i, -45459i), -2147483647i))), vec4<u32>(0u, 2271u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(var_1.x, var_1.x), vec2<bool>(false, false), vec4<i32>(-64847i, 1i, u_input.a.x, u_input.a.x), u_input.a.x), false), vec3<u32>(4059u, 1u, 10936u), countOneBits(vec4<u32>(27994u, 0u, 103442u, 4294967295u))), select(all(vec4<bool>(true, false, true, false)), true, true)), Struct_5(func_2(Struct_5(Struct_1(vec4<bool>(false, true, false, false), var_1, vec2<bool>(false, true), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), 17283i), u_input.a.x, false)).d, firstTrailingBit(~u_input.a.x), true)).a.e, ~43845u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(~30371u), firstLeadingBit(abs(reverseBits(60571u)))), 48768u, select(0u, 8408u >> (1u % 32u), true), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -59104i, 32143i), global0[_wgslsmith_index_u32(59621u, 30u)]), ~1i, -32342i, reverseBits(2147483647i)), vec3<i32>(36410i, 10438i >> (1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(u_input.a.x, u_input.a.x)), abs(firstTrailingBit(vec2<i32>(u_input.a.x, 14148i))))));
}

