struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, false, false, true, false, true, true, false, true, true, false, false, true, true, false, true, false, false, false, false, false, true, true, false, true, false);

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(1u, 0u, 12518u, 1u), 167f, vec3<bool>(true, true, false), vec3<f32>(1306f, -997f, -2079f), vec4<bool>(false, false, false, true)), Struct_1(vec4<u32>(28888u, 1u, 988u, 58552u), -1882f, vec3<bool>(true, false, true), vec3<f32>(1351f, 1954f, -1159f), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(0u, 24859u, 41681u, 0u), 707f, vec3<bool>(true, false, true), vec3<f32>(451f, -1000f, -235f), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(0u, 54286u, 45434u, 859u), 1000f, vec3<bool>(false, false, true), vec3<f32>(-964f, 1341f, -292f), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(4294967295u, 1u, 57563u, 1u), 1110f, vec3<bool>(true, false, false), vec3<f32>(282f, -1243f, 911f), vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(19452u, 34749u, 29661u, 4294967295u), 911f, vec3<bool>(false, true, true), vec3<f32>(-807f, 390f, 540f), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(1u, 34591u, 4294967295u, 0u), -559f, vec3<bool>(false, false, true), vec3<f32>(384f, -667f, -603f), vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), -982f, vec3<bool>(false, true, true), vec3<f32>(-796f, 420f, -1000f), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(15645u, 35013u, 65574u, 4294967295u), -922f, vec3<bool>(true, false, true), vec3<f32>(-159f, -1054f, 1150f), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(0u, 1620u, 1u, 0u), -543f, vec3<bool>(false, true, false), vec3<f32>(792f, 1000f, -275f), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(469u, 4946u, 17921u, 0u), -406f, vec3<bool>(true, true, true), vec3<f32>(2003f, -738f, -647f), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(0u, 77927u, 7656u, 9505u), -1068f, vec3<bool>(true, false, false), vec3<f32>(-1335f, 824f, 323f), vec4<bool>(false, false, false, false)), Struct_1(vec4<u32>(1u, 20492u, 48727u, 1u), 320f, vec3<bool>(false, false, true), vec3<f32>(-1013f, -1815f, 636f), vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(4294967295u, 0u, 77227u, 6499u), 1466f, vec3<bool>(true, false, false), vec3<f32>(776f, -1277f, 200f), vec4<bool>(true, true, true, true)), Struct_1(vec4<u32>(0u, 0u, 109175u, 4294967295u), -136f, vec3<bool>(true, true, true), vec3<f32>(925f, -697f, -1000f), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(4294967295u, 85765u, 109658u, 0u), -1950f, vec3<bool>(false, true, false), vec3<f32>(604f, -2112f, -683f), vec4<bool>(false, false, false, false)));

var<private> global3: f32 = -390f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = firstTrailingBit(vec3<i32>(~(-(~u_input.b)), u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(f32(-1f) * -333f)) + _wgslsmith_f_op_f32(ceil(-644f))) + _wgslsmith_f_op_f32(sign(-325f)));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(arg_0.x), 27u)];
    global2 = array<Struct_1, 16>();
    let var_3 = true;
    return !(1u > ~_wgslsmith_dot_vec4_u32(arg_0, arg_0));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    global1 = vec3<bool>(select(arg_0.a, all(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 27u)], arg_2.e.x))), true), false, arg_0.b.a.c.x);
    var var_0 = select(vec3<bool>(false, any(vec4<bool>(false, arg_0.b.a.c.x & arg_2.c.x, true, arg_0.a)), global1.x), select(vec3<bool>(false, true, global1.x), vec3<bool>(false, global0[_wgslsmith_index_u32(25044u, 27u)], global0[_wgslsmith_index_u32(arg_2.a.x, 27u)]), vec3<bool>(!(!global1.x), -615f <= arg_2.b, true)), (u_input.c & 36091u) < 42058u);
    let var_1 = !select(select(arg_2.e.zyy, !(!arg_0.b.a.c), func_3(vec4<u32>(arg_0.b.a.a.x, 0u, u_input.c, arg_2.a.x) ^ vec4<u32>(u_input.c, u_input.a, 1u, arg_2.a.x))), !(!vec3<bool>(arg_0.c, arg_2.e.x, true)), all(select(!vec4<bool>(false, global1.x, var_0.x, var_0.x), arg_2.e, arg_0.b.a.e)));
    global1 = vec3<bool>(false, !arg_2.c.x, func_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_0.b.a.a, abs(arg_0.b.a.a)), vec4<u32>(abs(arg_2.a.x), 1u, 795u, u_input.a), max(firstTrailingBit(arg_0.b.a.a), ~vec4<u32>(41097u, u_input.c, u_input.c, u_input.c)))));
    var_0 = arg_2.c;
    return Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.b)), 425f)), _wgslsmith_f_op_f32(trunc(-803f)))) >= 1623f, arg_0.b, false);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    global2 = array<Struct_1, 16>();
    var var_0 = ~arg_1.a.a.x;
    global1 = arg_0.b.a.e.xzz;
    let var_1 = Struct_4(global1.x, func_2(arg_0, u_input.b, Struct_1(min(arg_1.a.a, select(vec4<u32>(25453u, 48540u, arg_1.a.a.x, 41957u), arg_0.b.a.a, vec4<bool>(global0[_wgslsmith_index_u32(835u, 27u)], true, global1.x, true))), -209f, select(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(727u, 27u)], true), select(vec3<bool>(arg_1.a.c.x, true, false), arg_0.b.a.c, vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 27u)])), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.b, 669f, 1957f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 963f, arg_2)))), vec4<bool>(arg_1.a.c.x, true, global0[_wgslsmith_index_u32(arg_0.b.a.a.x, 27u)], global0[_wgslsmith_index_u32(85381u, 27u)]))).b, arg_0.b.a.e.x);
    var var_2 = Struct_1(vec4<u32>(1u, _wgslsmith_sub_u32(var_1.b.a.a.x, reverseBits(arg_0.b.a.a.x)), ~(~54516u), _wgslsmith_mult_u32(arg_0.b.a.a.x, 0u)), arg_0.b.a.d.x, func_2(Struct_4(arg_0.c, arg_0.b, false), reverseBits(max(1i, select(arg_0.b.b.a.x, var_1.b.b.a.x, global1.x))), func_2(Struct_4(true, arg_0.b, false), 1853i, arg_1.a).b.a).b.a.e.wwx, _wgslsmith_f_op_vec3_f32(-var_1.b.a.d), !(!vec4<bool>(true, var_1.a, global1.x, arg_1.a.e.x)));
    return Struct_3(func_2(Struct_4(global1.x, Struct_3(Struct_1(var_1.b.a.a, -101f, vec3<bool>(arg_0.a, false, arg_0.b.a.e.x), arg_0.b.a.d, vec4<bool>(false, false, arg_0.c, global0[_wgslsmith_index_u32(7360u, 27u)])), func_2(var_1, 2147483647i, global2[_wgslsmith_index_u32(arg_1.a.a.x, 16u)]).b.b), max(1i, -26124i) != -var_1.b.b.a.x), u_input.b, arg_1.a).b.a, func_2(func_2(Struct_4(!global1.x, func_2(var_1, -1i, Struct_1(var_1.b.a.a, -535f, var_2.e.zxz, arg_0.b.a.d, vec4<bool>(false, false, var_2.e.x, false))).b, arg_0.a), u_input.b, arg_0.b.a), arg_0.b.b.a.x | 0i, arg_0.b.a).b.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> Struct_5 {
    var var_0 = 0u;
    var var_1 = arg_1.b;
    global2 = array<Struct_1, 16>();
    return Struct_5(50977u);
}

fn func_6(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = func_5(Struct_3(func_4(Struct_4(global1.x == global0[_wgslsmith_index_u32(7442u, 27u)], func_2(Struct_4(false, Struct_3(Struct_1(vec4<u32>(47671u, u_input.c, u_input.c, u_input.c), 296f, vec3<bool>(true, false, true), vec3<f32>(1000f, 1433f, 201f), vec4<bool>(true, global1.x, true, true)), Struct_2(vec4<i32>(-1i, -1i, u_input.b, u_input.b))), false), -34044i, global2[_wgslsmith_index_u32(32120u, 16u)]).b, any(global1.zx)), func_2(Struct_4(true, Struct_3(Struct_1(vec4<u32>(1u, u_input.c, 4294967295u, arg_0.a), -180f, vec3<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true, false), vec3<f32>(-628f, -620f, 433f), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 27u)], false)), Struct_2(vec4<i32>(u_input.b, u_input.b, 2147483647i, 0i))), false), 38585i, func_2(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), global0[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.b, Struct_1(vec4<u32>(arg_0.a, u_input.a, u_input.c, 0u), -1090f, vec3<bool>(global1.x, global0[_wgslsmith_index_u32(23557u, 27u)], true), vec3<f32>(1500f, 1326f, 1000f), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)], true, false))).b.a).b, 1f).a, func_4(func_2(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(vec4<i32>(u_input.b, u_input.b, -5414i, 0i))), global0[_wgslsmith_index_u32(71453u, 27u)]), _wgslsmith_sub_i32(u_input.b, -9593i), Struct_1(vec4<u32>(arg_0.a, 0u, arg_0.a, arg_0.a), 980f, vec3<bool>(global1.x, true, global0[_wgslsmith_index_u32(u_input.c, 27u)]), vec3<f32>(-1000f, -210f, -1141f), vec4<bool>(true, global1.x, global1.x, false))), Struct_3(global2[_wgslsmith_index_u32(reverseBits(733u), 16u)], func_4(Struct_4(true, Struct_3(Struct_1(vec4<u32>(0u, 3327u, 0u, 78038u), -1013f, vec3<bool>(false, false, global1.x), vec3<f32>(-391f, 1000f, -553f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 27u)], true, global1.x)), Struct_2(vec4<i32>(21501i, u_input.b, -6408i, u_input.b))), global0[_wgslsmith_index_u32(arg_0.a, 27u)]), Struct_3(global2[_wgslsmith_index_u32(arg_0.a, 16u)], Struct_2(vec4<i32>(10669i, u_input.b, u_input.b, 0i))), 1192f).b), _wgslsmith_f_op_f32(-214f - -354f)).b), Struct_4(!(!global0[_wgslsmith_index_u32(1u, 27u)]), func_4(Struct_4(true, func_4(Struct_4(global0[_wgslsmith_index_u32(arg_0.a, 27u)], Struct_3(Struct_1(vec4<u32>(arg_0.a, arg_0.a, 41526u, u_input.a), 1007f, vec3<bool>(false, false, false), vec3<f32>(-230f, -775f, 788f), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global1.x, global1.x, false)), Struct_2(vec4<i32>(u_input.b, u_input.b, 0i, -2147483647i))), global0[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.a, arg_0.a, u_input.a), -115f, vec3<bool>(global0[_wgslsmith_index_u32(9090u, 27u)], true, global1.x), vec3<f32>(1092f, 252f, -1053f), vec4<bool>(false, global1.x, true, global0[_wgslsmith_index_u32(33084u, 27u)])), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), -1917f), any(global1.zx)), Struct_3(global2[_wgslsmith_index_u32(30329u, 16u)], Struct_2(vec4<i32>(53499i, 1i, u_input.b, u_input.b))), 807f), all(vec3<bool>(true, !global1.x, global1.x))), Struct_1(max(vec4<u32>(arg_0.a, arg_0.a, u_input.a, 0u), ~vec4<u32>(18689u, u_input.c, u_input.a, u_input.c)) << (~vec4<u32>(4294967295u, 1u, 0u, 53193u) % vec4<u32>(32u)), 1543f, vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -27267i, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, 51701i, -1i)) != _wgslsmith_div_i32(u_input.b, u_input.b), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_4(true, Struct_3(Struct_1(vec4<u32>(0u, 12408u, 1u, u_input.a), 402f, vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 27u)], false), vec3<f32>(887f, 1057f, -283f), vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(u_input.c, 27u)], true)), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), global1.x), u_input.b, global2[_wgslsmith_index_u32(35386u, 16u)]).b.a.d + vec3<f32>(-775f, 276f, 1180f))), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], true, global0[_wgslsmith_index_u32(u_input.a, 27u)], false))));
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a, 16u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))) + var_1.d.x);
    var var_3 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.a.xyx, vec3<u32>(4294967295u, 38639u, var_0.a)), func_2(Struct_4(global1.x, Struct_3(Struct_1(var_1.a, -1338f, vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 27u)], global0[_wgslsmith_index_u32(var_0.a, 27u)], true), var_1.d, var_1.e), Struct_2(vec4<i32>(23993i, u_input.b, u_input.b, -30677i))), var_1.c.x), -6698i, Struct_1(vec4<u32>(var_0.a, 21238u, 1u, 58853u), var_1.d.x, var_1.e.xxx, vec3<f32>(1469f, var_1.d.x, -220f), vec4<bool>(false, true, true, true))).b.a.a.x), _wgslsmith_dot_vec3_u32(var_1.a.xzx, vec3<u32>(arg_0.a, var_0.a, u_input.a)) << ((arg_0.a ^ 1u) % 32u), u_input.a << (~0u % 32u), 57573u), vec4<u32>(_wgslsmith_dot_vec4_u32(func_2(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(var_1.a.x, 16u)], Struct_2(vec4<i32>(0i, 38345i, -3779i, u_input.b))), false), -1i, global2[_wgslsmith_index_u32(4294967295u, 16u)]).b.a.a, vec4<u32>(u_input.a, u_input.c, var_1.a.x, var_1.a.x)), 1u, ~countOneBits(u_input.a), 134u)), _wgslsmith_f_op_f32(-1075f * -831f), func_4(func_2(func_2(func_2(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(var_1.a.x, 16u)], Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), global0[_wgslsmith_index_u32(0u, 27u)]), 0i, Struct_1(var_1.a, -436f, vec3<bool>(global0[_wgslsmith_index_u32(1u, 27u)], false, false), vec3<f32>(var_1.d.x, 1246f, -162f), var_1.e)), ~u_input.b, func_4(Struct_4(true, Struct_3(Struct_1(var_1.a, 362f, var_1.e.zyw, vec3<f32>(var_1.d.x, 1468f, -256f), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], true)), Struct_2(vec4<i32>(-14533i, 1787i, 21155i, u_input.b))), global0[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_3(Struct_1(vec4<u32>(15600u, var_1.a.x, u_input.c, u_input.a), 832f, vec3<bool>(var_1.e.x, global0[_wgslsmith_index_u32(1u, 27u)], var_1.c.x), var_1.d, vec4<bool>(false, false, false, false)), Struct_2(vec4<i32>(-39621i, 2147483647i, 2147483647i, 29982i))), var_1.b).a), -1i, global2[_wgslsmith_index_u32(reverseBits(62867u), 16u)]), func_2(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, var_0.a, 1u), var_1.a.xxx), 27u)], func_4(Struct_4(global0[_wgslsmith_index_u32(arg_0.a, 27u)], Struct_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(vec4<i32>(u_input.b, 1i, u_input.b, 0i))), false), Struct_3(Struct_1(vec4<u32>(arg_0.a, u_input.c, u_input.a, var_1.a.x), var_1.b, var_1.e.xyz, vec3<f32>(-980f, -229f, var_1.d.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 27u)], global0[_wgslsmith_index_u32(var_1.a.x, 27u)], true, global1.x)), Struct_2(vec4<i32>(-42718i, u_input.b, u_input.b, 19557i))), 490f), global0[_wgslsmith_index_u32(var_1.a.x, 27u)]), 12774i, func_2(Struct_4(global1.x, Struct_3(Struct_1(var_1.a, 313f, var_1.c, var_1.d, vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(4294967295u, 27u)])), Struct_2(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b))), var_1.c.x), 2147483647i, global2[_wgslsmith_index_u32(0u, 16u)]).b.a).b, _wgslsmith_f_op_f32(-958f - 1115f)).a.e.yyx, vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), var_1.b, 679f), vec4<bool>(any(!var_1.c), ~(-u_input.b) < u_input.b, true, -(~u_input.b) < u_input.b));
    var var_4 = func_4(func_2(Struct_4(!func_3(var_3.a), func_4(func_2(Struct_4(var_3.c.x, Struct_3(global2[_wgslsmith_index_u32(var_0.a, 16u)], Struct_2(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b))), var_1.e.x), -1i, global2[_wgslsmith_index_u32(var_3.a.x, 16u)]), Struct_3(Struct_1(vec4<u32>(var_0.a, 1u, 0u, 1u), 1611f, vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<f32>(var_3.d.x, 831f, var_3.b), var_1.e), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, -5491i))), var_1.b), false), -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 35811i, -48722i), vec4<i32>(-27860i, u_input.b, u_input.b, 0i)), ~2147483647i), Struct_1(firstLeadingBit(max(vec4<u32>(u_input.c, 2366u, arg_0.a, u_input.a), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), var_1.c, _wgslsmith_div_vec3_f32(var_1.d, var_3.d), select(!var_3.e, !var_1.e, var_1.b != -149f))), Struct_3(Struct_1(func_2(Struct_4(false, Struct_3(Struct_1(vec4<u32>(4294967295u, var_3.a.x, arg_0.a, arg_0.a), var_3.b, var_1.e.wwy, vec3<f32>(var_1.d.x, -439f, 503f), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 27u)], true, true)), Struct_2(vec4<i32>(-48018i, 10432i, 16733i, u_input.b))), var_1.c.x), u_input.b, global2[_wgslsmith_index_u32(39679u, 16u)]).b.a.a << (~vec4<u32>(var_3.a.x, var_0.a, var_0.a, var_1.a.x) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.d.x, var_1.d.x), _wgslsmith_f_op_f32(sign(var_3.b))), !vec3<bool>(global1.x, global0[_wgslsmith_index_u32(arg_0.a, 27u)], false), _wgslsmith_f_op_vec3_f32(-var_1.d), !(!var_1.e)), func_4(func_2(Struct_4(global0[_wgslsmith_index_u32(86872u, 27u)], Struct_3(global2[_wgslsmith_index_u32(var_3.a.x, 16u)], Struct_2(vec4<i32>(14309i, -2147483647i, 1i, 2147483647i))), global0[_wgslsmith_index_u32(1u, 27u)]), u_input.b, func_2(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(var_1.a.x, 16u)], Struct_2(vec4<i32>(55662i, 14972i, 82202i, u_input.b))), false), 39823i, global2[_wgslsmith_index_u32(1u, 16u)]).b.a), Struct_3(global2[_wgslsmith_index_u32(var_0.a, 16u)], func_2(Struct_4(false, Struct_3(global2[_wgslsmith_index_u32(var_3.a.x, 16u)], Struct_2(vec4<i32>(u_input.b, -52594i, -3006i, 2147483647i))), var_3.e.x), u_input.b, Struct_1(var_1.a, -664f, vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 27u)], true), vec3<f32>(var_3.b, 151f, 1155f), var_1.e)).b.b), 2030f).b), var_1.b).a;
    return vec4<u32>(_wgslsmith_sub_u32(49506u, var_4.a.x), 1u, reverseBits(~firstLeadingBit(1u)), ~countOneBits(var_3.a.x));
}

fn func_1(arg_0: f32, arg_1: f32) -> StorageBuffer {
    var var_0 = reverseBits(~(~(~vec2<i32>(u_input.b, -1i))));
    var var_1 = Struct_1(func_6(func_5(func_4(func_2(Struct_4(global0[_wgslsmith_index_u32(u_input.c, 27u)], Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.c, 18087u, 1u), 615f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], true), vec3<f32>(-327f, arg_0, 325f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 27u)], global1.x, global1.x)), Struct_2(vec4<i32>(-39893i, 2147483647i, 1i, u_input.b))), global1.x), -50985i, Struct_1(vec4<u32>(16415u, 35799u, u_input.c, 2856u), -633f, vec3<bool>(true, global1.x, false), vec3<f32>(arg_0, arg_0, arg_1), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a, 27u)]))), func_2(Struct_4(global0[_wgslsmith_index_u32(1u, 27u)], Struct_3(global2[_wgslsmith_index_u32(u_input.c, 16u)], Struct_2(vec4<i32>(-33855i, 1i, 15202i, 2147483647i))), global1.x), -32361i, global2[_wgslsmith_index_u32(u_input.a, 16u)]).b, _wgslsmith_f_op_f32(max(1702f, arg_1))), Struct_4(func_4(Struct_4(global1.x, Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.a, 16970u, u_input.c), arg_1, vec3<bool>(true, false, false), vec3<f32>(-119f, arg_1, -164f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 27u)], false, global0[_wgslsmith_index_u32(u_input.a, 27u)])), Struct_2(vec4<i32>(-18781i, 0i, u_input.b, u_input.b))), false), Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.a), arg_0, vec3<bool>(false, false, global1.x), vec3<f32>(arg_0, -1000f, -1353f), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], true, true, global1.x)), Struct_2(vec4<i32>(2147483647i, -10310i, var_0.x, -2147483647i))), 316f).a.e.x, func_2(Struct_4(false, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(vec4<i32>(-15082i, 0i, 5844i, 0i))), global0[_wgslsmith_index_u32(17629u, 27u)]), 2147483647i, global2[_wgslsmith_index_u32(u_input.c, 16u)]).b, global0[_wgslsmith_index_u32(u_input.c, 27u)]), func_4(func_2(Struct_4(global1.x, Struct_3(Struct_1(vec4<u32>(u_input.a, u_input.c, 41622u, u_input.c), 1459f, vec3<bool>(global1.x, true, true), vec3<f32>(arg_0, 163f, arg_0), vec4<bool>(global1.x, global1.x, true, true)), Struct_2(vec4<i32>(-1i, 1i, -2147483647i, var_0.x))), global0[_wgslsmith_index_u32(0u, 27u)]), var_0.x, Struct_1(vec4<u32>(1u, 28064u, u_input.c, 1u), arg_0, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], global1.x, global1.x), vec3<f32>(arg_0, 194f, -1163f), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 27u)], global1.x, global1.x))), func_2(Struct_4(false, Struct_3(global2[_wgslsmith_index_u32(1u, 16u)], Struct_2(vec4<i32>(74276i, -2147483647i, -1i, 35176i))), true), 2147483647i, global2[_wgslsmith_index_u32(u_input.c, 16u)]).b, 964f).a)), func_2(Struct_4(true, func_2(func_2(Struct_4(true, Struct_3(Struct_1(vec4<u32>(u_input.a, 23431u, 1u, u_input.a), -1139f, vec3<bool>(false, true, true), vec3<f32>(arg_1, arg_1, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], false, global0[_wgslsmith_index_u32(u_input.a, 27u)], false)), Struct_2(vec4<i32>(-14090i, -24511i, 2147483647i, var_0.x))), global0[_wgslsmith_index_u32(0u, 27u)]), -41034i, global2[_wgslsmith_index_u32(u_input.c, 16u)]), 17336i & u_input.b, global2[_wgslsmith_index_u32(0u, 16u)]).b, true == all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], true, global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(12443u, 27u)]))), -_wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(49576i, var_0.x)), func_4(Struct_4(any(vec2<bool>(false, false)), func_4(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(vec4<i32>(u_input.b, u_input.b, 1i, -17929i))), global1.x), Struct_3(Struct_1(vec4<u32>(1u, u_input.c, 0u, u_input.a), arg_1, vec3<bool>(false, false, global1.x), vec3<f32>(-1652f, arg_1, -1520f), vec4<bool>(global0[_wgslsmith_index_u32(48340u, 27u)], false, true, true)), Struct_2(vec4<i32>(2147483647i, 2147483647i, 1231i, 1i))), 839f), global1.x && global0[_wgslsmith_index_u32(4294967295u, 27u)]), func_2(func_2(Struct_4(true, Struct_3(Struct_1(vec4<u32>(63913u, u_input.a, 4294967295u, u_input.a), arg_0, vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], true), vec3<f32>(-1152f, arg_0, arg_0), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(36259u, 27u)])), Struct_2(vec4<i32>(u_input.b, -5355i, -1i, u_input.b))), false), u_input.b, global2[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -6884i, var_0.x, u_input.b), vec4<i32>(var_0.x, -2147483647i, u_input.b, -1i)), Struct_1(vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u), arg_0, vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 27u)], true), vec3<f32>(127f, arg_1, -590f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], global1.x, true, false))).b, -694f).a).b.a.d.x, !select(vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 27u)], func_2(Struct_4(false, Struct_3(Struct_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 7439u), arg_1, vec3<bool>(true, global0[_wgslsmith_index_u32(44358u, 27u)], global1.x), vec3<f32>(arg_0, 1000f, -734f), vec4<bool>(true, false, global1.x, true)), Struct_2(vec4<i32>(-2147483647i, u_input.b, var_0.x, u_input.b))), global1.x), 23400i, Struct_1(vec4<u32>(0u, u_input.a, u_input.a, 110392u), 302f, vec3<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.c, 27u)], true), vec3<f32>(arg_1, -905f, -1811f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 27u)], true, true))).a, func_3(vec4<u32>(u_input.c, 1u, u_input.c, 0u))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 24036u, u_input.a, 60606u), vec4<u32>(0u, 7985u, u_input.a, 4294967295u)), 27u)], global0[_wgslsmith_index_u32(54438u, 27u)], false), !(582i >= var_0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) + vec3<f32>(131f, arg_1, arg_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1040f, arg_0) * vec3<f32>(154f, -338f, arg_0)))))), !select(!(!vec4<bool>(false, true, false, global1.x)), vec4<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(14387u, 27u)] || global0[_wgslsmith_index_u32(97084u, 27u)], false == global1.x), !func_4(Struct_4(global0[_wgslsmith_index_u32(0u, 27u)], Struct_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(vec4<i32>(u_input.b, -60i, var_0.x, 12853i))), global0[_wgslsmith_index_u32(33449u, 27u)]), Struct_3(Struct_1(vec4<u32>(0u, u_input.c, u_input.a, u_input.c), arg_1, vec3<bool>(false, false, true), vec3<f32>(arg_0, arg_1, -835f), vec4<bool>(false, global1.x, false, global0[_wgslsmith_index_u32(u_input.a, 27u)])), Struct_2(vec4<i32>(var_0.x, -19467i, -76440i, var_0.x))), -1000f).a.e));
    var var_2 = var_0.x;
    global0 = array<bool, 27>();
    var var_3 = Struct_2(vec4<i32>(2147483647i, abs(-25728i), var_0.x << (~13266u % 32u), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.x, u_input.b, -57807i), vec4<i32>(0i, u_input.b, 0i, -1i)))) & func_2(func_2(Struct_4(false, Struct_3(global2[_wgslsmith_index_u32(u_input.c, 16u)], Struct_2(vec4<i32>(var_0.x, 2147483647i, -211i, -2147483647i))), false), firstTrailingBit(-42133i), Struct_1(vec4<u32>(4294967295u, var_1.a.x, 86393u, 47254u), -713f, vec3<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(4294967295u, 27u)]), var_1.d, var_1.e)), _wgslsmith_clamp_i32(11053i, u_input.b >> (0u % 32u), _wgslsmith_mult_i32(34730i, -30245i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.a.x, 4294967295u), _wgslsmith_mod_u32(u_input.c, 0u)), 16u)]).b.b.a);
    return StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~49792u), countOneBits(~vec2<u32>(30902u, 0u))) >> (var_1.a.x % 32u), firstLeadingBit(~(vec4<i32>(-1i) * -vec4<i32>(1i, -1i, u_input.b, u_input.b))), var_1.a, _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, ~4294967295u)), vec2<u32>(1u, ~4294967295u)), func_4(Struct_4(any(vec4<bool>(var_1.c.x, global1.x, true, false)), func_4(Struct_4(global0[_wgslsmith_index_u32(var_1.a.x, 27u)], Struct_3(Struct_1(var_1.a, arg_0, vec3<bool>(false, true, var_1.e.x), vec3<f32>(-1000f, -775f, arg_1), vec4<bool>(var_1.c.x, false, var_1.c.x, false)), Struct_2(vec4<i32>(-7540i, var_0.x, 0i, u_input.b))), true), Struct_3(Struct_1(vec4<u32>(3897u, u_input.a, 23113u, u_input.a), var_1.d.x, vec3<bool>(global1.x, true, false), vec3<f32>(-550f, 365f, arg_0), var_1.e), Struct_2(var_3.a)), -947f), true), Struct_3(func_4(Struct_4(global1.x, Struct_3(global2[_wgslsmith_index_u32(47591u, 16u)], Struct_2(vec4<i32>(15423i, var_0.x, -713i, var_3.a.x))), global0[_wgslsmith_index_u32(0u, 27u)]), Struct_3(global2[_wgslsmith_index_u32(1u, 16u)], Struct_2(vec4<i32>(u_input.b, 74479i, -14688i, -1i))), -501f).a, func_4(Struct_4(true, Struct_3(global2[_wgslsmith_index_u32(var_1.a.x, 16u)], Struct_2(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b))), true), Struct_3(Struct_1(var_1.a, -264f, var_1.e.yxx, var_1.d, vec4<bool>(false, true, global1.x, global1.x)), Struct_2(vec4<i32>(2147483647i, u_input.b, var_3.a.x, 50551i))), 328f).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f - -188f) * _wgslsmith_f_op_f32(-arg_1))).a.a.www | ~(~(~var_1.a.zyx)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1172f), 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(323f * -1549f))))), _wgslsmith_f_op_f32(ceil(1841f)));
}

