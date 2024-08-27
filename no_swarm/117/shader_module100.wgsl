struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(2147483647i, -7533i, 8754i, -11294i, i32(-2147483648), 1i, -1i);

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(0u, 4294967295u, 6590u, 65963u), 2187u, Struct_1(vec2<u32>(412u, 6200u), vec4<f32>(-1184f, -244f, 449f, 462f), 345f, true, i32(-2147483648)), 1u, true), Struct_2(vec4<u32>(4294967295u, 1u, 124061u, 15117u), 4294967295u, Struct_1(vec2<u32>(45797u, 12593u), vec4<f32>(360f, 883f, -1159f, -228f), -1362f, true, 1i), 1u, false), Struct_2(vec4<u32>(18344u, 0u, 45644u, 39685u), 4294967295u, Struct_1(vec2<u32>(1u, 67871u), vec4<f32>(1000f, -167f, -218f, -367f), 2986f, true, -19401i), 0u, true), Struct_2(vec4<u32>(46432u, 77939u, 0u, 1u), 61131u, Struct_1(vec2<u32>(71476u, 0u), vec4<f32>(164f, -1798f, -981f, -905f), 261f, false, 2147483647i), 63286u, true), Struct_2(vec4<u32>(0u, 93721u, 4294967295u, 28121u), 0u, Struct_1(vec2<u32>(9049u, 23958u), vec4<f32>(858f, -139f, -310f, 433f), 209f, true, -30305i), 18408u, true), Struct_2(vec4<u32>(66035u, 56502u, 3690u, 32495u), 37676u, Struct_1(vec2<u32>(18273u, 0u), vec4<f32>(298f, -190f, 159f, 128f), 165f, true, 0i), 70160u, false), Struct_2(vec4<u32>(55032u, 4294967295u, 1u, 0u), 4294967295u, Struct_1(vec2<u32>(4294967295u, 39261u), vec4<f32>(-1000f, -311f, -250f, 910f), -2565f, false, -1i), 1u, true), Struct_2(vec4<u32>(0u, 8628u, 1u, 24695u), 4294967295u, Struct_1(vec2<u32>(10452u, 32892u), vec4<f32>(-677f, 296f, 211f, 542f), 1366f, true, 0i), 7502u, false), Struct_2(vec4<u32>(7137u, 15057u, 74395u, 4294967295u), 42321u, Struct_1(vec2<u32>(94638u, 0u), vec4<f32>(182f, 1778f, 142f, 1000f), 1102f, false, -18998i), 88106u, true), Struct_2(vec4<u32>(5180u, 18586u, 5568u, 20523u), 1u, Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-293f, 208f, 277f, -288f), 1919f, false, -33113i), 22357u, true), Struct_2(vec4<u32>(1554u, 4294967295u, 4294967295u, 1u), 4294967295u, Struct_1(vec2<u32>(14511u, 4294967295u), vec4<f32>(504f, -1029f, -795f, 208f), -148f, true, 0i), 0u, false), Struct_2(vec4<u32>(0u, 19458u, 3871u, 31245u), 42957u, Struct_1(vec2<u32>(36493u, 54664u), vec4<f32>(-1000f, -352f, 2032f, 630f), -1304f, false, 2147483647i), 1u, true), Struct_2(vec4<u32>(4294967295u, 45584u, 1u, 92474u), 4294967295u, Struct_1(vec2<u32>(1u, 0u), vec4<f32>(591f, -1394f, -202f, -178f), 1187f, false, i32(-2147483648)), 1u, true), Struct_2(vec4<u32>(4294967295u, 4141u, 0u, 22671u), 26987u, Struct_1(vec2<u32>(1u, 75899u), vec4<f32>(768f, -1818f, -783f, 636f), 323f, false, 2939i), 5635u, false), Struct_2(vec4<u32>(4294967295u, 17104u, 13939u, 16305u), 4294967295u, Struct_1(vec2<u32>(77744u, 8054u), vec4<f32>(-1245f, -961f, 934f, 369f), -1294f, false, -1i), 130242u, true), Struct_2(vec4<u32>(4294967295u, 35164u, 53173u, 0u), 13536u, Struct_1(vec2<u32>(28506u, 6495u), vec4<f32>(-901f, -698f, 1502f, -961f), -779f, true, 100219i), 35835u, true), Struct_2(vec4<u32>(0u, 19747u, 4294967295u, 33106u), 10389u, Struct_1(vec2<u32>(54424u, 18137u), vec4<f32>(1204f, 681f, -373f, 765f), -1504f, false, 19279i), 1u, true), Struct_2(vec4<u32>(0u, 29426u, 59779u, 4294967295u), 1u, Struct_1(vec2<u32>(50117u, 79979u), vec4<f32>(-901f, 874f, -1129f, -2900f), -985f, false, i32(-2147483648)), 6918u, false), Struct_2(vec4<u32>(38831u, 18684u, 12337u, 61007u), 57701u, Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-414f, -2357f, 1386f, 2600f), 565f, true, -11944i), 21728u, true), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), 4294967295u, Struct_1(vec2<u32>(0u, 1u), vec4<f32>(424f, 457f, -1428f, -302f), -1385f, false, 1i), 47588u, true), Struct_2(vec4<u32>(18625u, 40503u, 9031u, 1u), 4294967295u, Struct_1(vec2<u32>(1u, 58078u), vec4<f32>(-288f, -2266f, 1387f, 1132f), 1015f, false, -3550i), 27528u, false), Struct_2(vec4<u32>(41173u, 1u, 4294967295u, 79397u), 998u, Struct_1(vec2<u32>(0u, 0u), vec4<f32>(1103f, -1083f, -341f, 538f), -1000f, false, 46794i), 1u, false), Struct_2(vec4<u32>(10290u, 20171u, 59902u, 99381u), 4294967295u, Struct_1(vec2<u32>(4294967295u, 25475u), vec4<f32>(-834f, 1176f, -1014f, -1985f), -971f, true, 2720i), 4294967295u, false));

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: f32 = 263f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<u32> {
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u >> (0u % 32u), 1u), _wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(58907u, 39502u))), _wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(34816u, 0u), vec2<u32>(0u, 1u))), select(vec2<u32>(27370u, 15192u), vec2<u32>(4294967295u, 0u), vec2<bool>(global3.x, true)) << (~vec2<u32>(87242u, 87630u) % vec2<u32>(32u))))), 1u)];
    let var_1 = ~_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(var_0.e, var_0.e, _wgslsmith_sub_i32(12056i, ~34846i)));
    var var_2 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * -432f)), select(true, ~var_0.a.x > var_0.a.x, var_0.d), 2147483647i);
    return var_2.a;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = vec2<f32>(1555f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1750f)))))));
    return Struct_1(~(vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, 41131u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), func_3()) % vec2<u32>(32u))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * 1388f)))), _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - -1000f) * _wgslsmith_f_op_f32(sign(1253f))))), global3.x, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, global0[_wgslsmith_index_u32(18055u, 7u)], u_input.a.x, 23457i)), _wgslsmith_sub_vec4_i32(vec4<i32>(19910i, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x, 11456i), vec4<i32>(u_input.a.x, 1i, -42016i, global0[_wgslsmith_index_u32(1u, 7u)]))), -8127i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(~vec4<u32>(~(~arg_1.a.x), _wgslsmith_clamp_u32(~142959u, 4294967295u, ~0u), arg_1.a.x, arg_1.a.x), arg_1.a.x, func_2(!vec3<bool>(all(vec2<bool>(global3.x, global3.x)), arg_1.d, any(vec4<bool>(arg_1.d, true, true, arg_1.d)))), 0u & _wgslsmith_clamp_u32(6845u, arg_1.a.x, arg_1.a.x), true);
    global2 = array<Struct_1, 1>();
    let var_1 = 1u;
    global0 = array<i32, 7>();
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    return Struct_1(var_2.a.xz, arg_1.b, -489f, ~(~firstTrailingBit(4294967295u)) < 42840u, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.c.e, reverseBits(global0[_wgslsmith_index_u32(0u, 7u)])), abs(1i), 1i));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(~67923i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(3607u, 7u)], 1i, arg_2.e), u_input.a), arg_0.e), 2147483647i, (global0[_wgslsmith_index_u32(arg_0.a.x, 7u)] | arg_2.e) | (i32(-1i) * -1i)), abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.e, global0[_wgslsmith_index_u32(arg_0.a.x, 7u)], -12311i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(28636u, 7u)], 999i)), -vec4<i32>(arg_2.e, arg_0.e, u_input.a.x, arg_2.e)) << (~vec4<u32>(1u, 1u, arg_0.a.x, 1u) % vec4<u32>(32u))));
    global2 = array<Struct_1, 1>();
    let var_1 = Struct_2(~vec4<u32>(~arg_0.a.x, arg_2.a.x, ~42565u, 16791u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(31926u, 52286u, 0u), vec3<u32>(arg_2.a.x, 39515u, 0u)) >> (_wgslsmith_mult_u32(~(~0u), min(4294967295u, arg_0.a.x) >> (arg_0.a.x % 32u)) % 32u), Struct_1(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), arg_2.a, arg_2.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(571f, arg_0.c) - _wgslsmith_f_op_f32(-387f * arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(968f, arg_2.b.x) - arg_0.c), _wgslsmith_f_op_f32(arg_0.b.x * -707f), 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1431f * arg_0.b.x), 255f), _wgslsmith_f_op_f32(-arg_2.c)), global3.x, abs((global0[_wgslsmith_index_u32(arg_0.a.x, 7u)] | u_input.a.x) >> (52163u % 32u))), ~(~1u), select(any(select(select(vec3<bool>(arg_0.d, false, true), vec3<bool>(false, global3.x, true), vec3<bool>(false, false, arg_2.d)), !vec3<bool>(false, arg_1, arg_0.d), true)), arg_0.d, arg_1));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.a.yxy, vec3<u32>(9551u, 0u, var_1.d), var_1.a.zzw), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), ~var_1.a.zyz);
    let var_3 = Struct_1(vec2<u32>(firstTrailingBit(4480u) ^ var_1.d, min(~var_2, arg_2.a.x) ^ arg_2.a.x), _wgslsmith_f_op_vec4_f32(-func_2(!(!vec3<bool>(true, global3.x, arg_1))).b), arg_0.c, true, 21260i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.c.c))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(vec2<u32>(149361u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2473f, 806f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f + -122f) + -812f), -1292f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(Struct_1(~vec2<u32>(4294967295u, 25229u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1980f, 1643f, 105f, 1000f) + vec4<f32>(1063f, -1365f, 101f, 870f)), _wgslsmith_div_f32(431f, -1176f), global3.x, abs(-1i)), !global3.x, func_4(vec3<f32>(249f, -120f, -3537f), func_2(vec3<bool>(false, false, global3.x))))), -686f, all(vec2<bool>(select(global3.x, global3.x, true), all(vec3<bool>(global3.x, false, false)))))), true, 0i);
    var var_1 = var_0.a;
    var var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(1u, 23u)];
    let var_4 = i32(-1i) * -((countOneBits(var_0.e) >> (countOneBits(0u) % 32u)) & ~1i);
    return reverseBits(3429u >> (max(0u >> (~4294967295u % 32u), 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)));
    let var_1 = vec4<u32>((~105594u & firstTrailingBit(abs(57398u))) & func_1(), ~4294967295u, ~_wgslsmith_mod_u32(~48274u, 9457u), (~_wgslsmith_mult_u32(0u, 12377u) | func_3().x) & max(1u, reverseBits(_wgslsmith_mult_u32(0u, 0u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, global3.x)).c - _wgslsmith_f_op_f32(step(479f, -1314f)))), _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))))));
    var var_2 = -15218i | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a, ~u_input.a), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(7875u, 7u)], 0i)), -(i32(-1i) * -1i)), -vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 7u)], 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx)));
    global4 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(trunc(-1705f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(361f, 701f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-660f - 699f), -2283f, global3.x)))), global2[_wgslsmith_index_u32(3099u, 1u)]).c;
    var var_3 = Struct_2(vec4<u32>(var_1.x, var_1.x, max(0u, 1u), var_1.x), ~abs(1u), global2[_wgslsmith_index_u32(5592u, 1u)], firstTrailingBit(var_1.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_1, var_1 << (vec4<u32>(var_1.x, 0u, 82445u, var_1.x) % vec4<u32>(32u)))) == ~0u);
    global3 = select(vec2<bool>(global3.x, global3.x), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.b.x, -351f) * var_3.c.c) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), !(1u > ~var_3.c.a.x)), vec2<bool>(var_3.c.d & true, var_3.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(-1199f, 1000f, var_3.c.b.x, vec2<i32>(global0[_wgslsmith_index_u32(~(~0u), 7u)], global0[_wgslsmith_index_u32(var_3.d ^ 0u, 7u)]));
}

