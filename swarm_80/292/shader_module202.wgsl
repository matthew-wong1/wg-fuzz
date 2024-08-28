struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(531f, -1000f), vec2<f32>(1000f, -1293f), vec2<f32>(1000f, 568f), vec2<f32>(-2472f, 550f), vec2<f32>(1742f, 1321f), vec2<f32>(-864f, 1337f), vec2<f32>(-375f, 738f), vec2<f32>(-502f, -811f), vec2<f32>(828f, -1612f), vec2<f32>(204f, -1000f), vec2<f32>(1313f, -382f), vec2<f32>(-2447f, 880f), vec2<f32>(138f, -316f));

var<private> global2: i32 = 21292i;

var<private> global3: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-11069i, -1i, 27009i, 2147483647i), vec4<i32>(-1466i, -1i, 1i, -4420i), vec4<i32>(2147483647i, -13901i, -23605i, -60661i), vec4<i32>(-3462i, -31717i, 0i, 33863i), vec4<i32>(-27485i, -42311i, -32315i, 8786i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 23392i), vec4<i32>(i32(-2147483648), 2147483647i, -16389i, 22873i), vec4<i32>(-18297i, -73091i, 0i, 0i), vec4<i32>(0i, -5030i, 1i, -24433i), vec4<i32>(-1i, -5616i, -38878i, i32(-2147483648)), vec4<i32>(2147483647i, 28653i, -17085i, 33175i), vec4<i32>(2147483647i, -1i, -998i, 1i), vec4<i32>(0i, 0i, -1i, i32(-2147483648)), vec4<i32>(-28928i, 8916i, 0i, 3089i), vec4<i32>(888i, -1i, -1i, 6618i), vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i));

var<private> global4: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(~1u, 13u)]));
    var var_1 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(true, true, true)), vec3<bool>(true, !any(vec3<bool>(false, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false))), vec3<bool>(true, -16581i >= min(u_input.a, -20316i), false)), any(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-772f - 673f), _wgslsmith_div_f32(-1965f, 376f)))));
    var var_3 = !(!select(select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), var_1.x), select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<bool>(var_1.x, false, var_1.x, false)), any(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x)))));
    global4 = array<vec2<bool>, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1010f)), -624f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2 - 1000f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = select(vec4<i32>(firstLeadingBit(arg_0.x), 0i, 13371i, ~1i), vec4<i32>(-_wgslsmith_mod_i32(min(-51442i, 2147483647i), _wgslsmith_div_i32(arg_0.x, 21077i)), 27351i, ~_wgslsmith_sub_i32(arg_0.x << (1u % 32u), 21792i), arg_0.x), false);
    var var_1 = _wgslsmith_f_op_f32(min(946f, _wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_2(Struct_1(vec3<bool>(true, true, true)), u_input.c.x, Struct_1(vec3<bool>(!all(global4[_wgslsmith_index_u32(4294967295u, 26u)]), false, any(vec2<bool>(false, true)) | false)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), select(vec4<bool>((u_input.c.x < arg_1.x) == true, true, select(select(false, false, false), all(vec2<bool>(true, true)), u_input.c.x == 1u), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false)))));
    global1 = array<vec2<f32>, 13>();
    var_1 = _wgslsmith_f_op_f32(1278f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(321f))));
    return Struct_1(vec3<bool>(var_2.a.a.x, select(any(vec3<bool>(true, true, false)), false, _wgslsmith_f_op_f32(round(1287f)) != 935f), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    global3 = array<vec4<i32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1783f)))));
    let var_1 = Struct_2(arg_1, arg_0.x, Struct_1(!arg_1.a), select(select(select(vec4<bool>(true, false, false, false), !vec4<bool>(arg_2, true, false, false), vec4<bool>(arg_2, false, arg_2, arg_2)), !vec4<bool>(arg_1.a.x, arg_2, false, arg_2), !vec4<bool>(false, false, false, arg_2)), select(!(!vec4<bool>(true, true, arg_1.a.x, true)), select(select(vec4<bool>(true, true, arg_2, true), vec4<bool>(arg_1.a.x, arg_2, arg_2, true), arg_2), !vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), true), true), true), !vec4<bool>(true, true, arg_1.a.x, true && func_2(vec3<i32>(-32732i, u_input.d.x, arg_3), arg_0).a.x));
    var var_2 = arg_1.a.xz;
    global0 = var_1.b == _wgslsmith_add_u32(reverseBits(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, arg_0.x));
    return var_1.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = u_input.c.zx;
    let var_1 = arg_1.a.x;
    let var_2 = Struct_2(func_4(select(~abs(vec4<u32>(arg_3.b, 1u, 1683u, 20289u)), min(~vec4<u32>(arg_3.b, u_input.c.x, 4294967295u, arg_3.b), min(vec4<u32>(51112u, var_0.x, var_0.x, 77137u), vec4<u32>(11492u, 21497u, 13821u, arg_3.b))), true), func_4(~vec4<u32>(arg_3.b, arg_3.b, 40401u, arg_3.b), func_4(~vec4<u32>(1u, 4398u, u_input.c.x, 33903u), Struct_1(arg_3.a.a), true, -1i), true, firstLeadingBit(u_input.b.x) ^ 2147483647i), !arg_3.a.a.x, min(_wgslsmith_dot_vec4_i32(u_input.b, arg_0) ^ _wgslsmith_clamp_i32(41292i, 2975i, arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-44998i, 14255i), arg_0.zy) ^ -u_input.d.x)), reverseBits(var_0.x), Struct_1(vec3<bool>(var_1, arg_2, all(select(arg_3.e, vec4<bool>(true, arg_3.e.x, false, false), false)))), arg_3.e, arg_3.d);
    var var_3 = _wgslsmith_add_vec3_i32(u_input.b.xyz, ~u_input.b.xyy);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + -1642f), 101f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1316f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -659f), 1054f, true))) - 297f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f + -1801f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1384f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -761f))))));
    return vec2<u32>(u_input.c.x | 4294967295u, ~(~abs(u_input.c.x))) ^ (_wgslsmith_add_vec2_u32(select(vec2<u32>(arg_3.b, var_2.b), var_0, func_4(vec4<u32>(var_0.x, 1u, var_0.x, u_input.c.x), Struct_1(arg_1.a), arg_2, -1i).a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, var_2.b), u_input.c.xz), u_input.c.yx)) << (u_input.c.yy % vec2<u32>(32u)));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(func_2(u_input.b.xzw, vec4<u32>(340u, 0u | u_input.c.x, arg_0.x, arg_0.x ^ 29176u)).a), firstLeadingBit(0u), func_2(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1, arg_1, arg_1), global3[_wgslsmith_index_u32(arg_0.x, 16u)]), -53781i, arg_1), min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, arg_0.x), ~vec4<u32>(arg_0.x, 31528u, arg_0.x, arg_0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 1u, arg_0.x, 0u)))), !vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(min(~u_input.c.x, u_input.c.x) > arg_0.x, true, false, arg_2.x));
    var var_1 = Struct_2(var_0.a, 1u, func_4(vec4<u32>(~(1u << (var_0.b % 32u)), 50991u, u_input.c.x, arg_0.x), var_0.a, func_4(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 42888u, arg_0.x, var_0.b), countOneBits(vec4<u32>(u_input.c.x, arg_0.x, var_0.b, 12951u))), Struct_1(vec3<bool>(true, true, arg_2.x)), func_2(vec3<i32>(-2147483647i, arg_1, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 10511u, 0u, var_0.b), vec4<u32>(arg_0.x, 33423u, 1u, var_0.b))).a.x, arg_1).a.x, u_input.b.x), vec4<bool>(true, true, true, true), var_0.e);
    let var_2 = var_0.c.a.x;
    let var_3 = func_4(reverseBits(min(abs(vec4<u32>(0u, 1u, 8930u, var_0.b)), vec4<u32>(4294967295u, var_0.b >> (u_input.c.x % 32u), var_0.b, var_1.b))), func_2(u_input.b.xwz, ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 2398u, 0u, 5667u)), vec4<u32>(var_1.b, u_input.c.x, arg_0.x, arg_0.x))), true, u_input.d.x);
    global3 = array<vec4<i32>, 16>();
    return Struct_2(var_1.c, select(_wgslsmith_sub_u32(4003u, select(~var_1.b, ~var_0.b, false)), firstLeadingBit(~4294967295u), var_1.c.a.x), Struct_1(var_1.e.yxy), select(var_1.d, select(vec4<bool>(var_1.c.a.x, false, var_0.c.a.x, all(var_3.a)), select(select(vec4<bool>(var_0.c.a.x, var_3.a.x, false, false), vec4<bool>(var_1.c.a.x, var_3.a.x, false, var_3.a.x), var_0.e), !var_0.d, vec4<bool>(false, true, true, var_1.a.a.x)), var_1.c.a.x), vec4<bool>(true, false, !(var_3.a.x | false), true)), vec4<bool>(false, var_3.a.x, false, func_2(-u_input.b.zxy, vec4<u32>(var_1.b, ~1u, 1u, _wgslsmith_mod_u32(51784u, var_0.b))).a.x));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_6(func_5(vec4<i32>(~(~1i), u_input.a & u_input.d.x, ~(-2147483647i >> (u_input.c.x % 32u)), -2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12329u, 73088u), vec3<u32>(u_input.c.x, 98212u, 1u)) % 32u)), Struct_1(vec3<bool>(true, true, true)), min(~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)) != 4294967295u, Struct_2(func_4(vec4<u32>(u_input.c.x, 71186u, 1u, 1u), func_2(u_input.b.zyw, vec4<u32>(50494u, u_input.c.x, 75761u, 15051u)), false, u_input.d.x ^ 11047i), 5265u, Struct_1(vec3<bool>(false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(all(global4[_wgslsmith_index_u32(u_input.c.x, 26u)]), any(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false)), true))), select(~(-(0i >> (1u % 32u))), firstTrailingBit(8576i), _wgslsmith_div_i32(~2147483647i, -u_input.a) != _wgslsmith_div_i32(u_input.a, u_input.a | -57257i)), vec3<bool>(false, true || (u_input.c.x <= _wgslsmith_clamp_u32(22746u, u_input.c.x, u_input.c.x)), func_2(u_input.b.xyw ^ _wgslsmith_add_vec3_i32(u_input.b.zxw, u_input.b.zzy), select(~vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 24823u, 118523u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, 4294967295u, u_input.c.x, u_input.c.x)), true)).a.x));
    var_0 = func_6(~(~((vec2<u32>(u_input.c.x, 39842u) | u_input.c.zz) ^ vec2<u32>(23636u, var_0.b))), countOneBits(~select(abs(54777i), -u_input.d.x, any(vec3<bool>(var_0.c.a.x, var_0.a.a.x, true)))), select(var_0.c.a, var_0.e.wyw, !func_2(vec3<i32>(u_input.b.x, 0i, -1i), firstLeadingBit(vec4<u32>(var_0.b, u_input.c.x, var_0.b, 4294967295u))).a));
    let var_1 = vec4<bool>(any(vec3<bool>(true, var_0.d.x, all(!var_0.e.xz))), true, !(var_0.a.a.x || true), var_0.a.a.x);
    let var_2 = Struct_2(Struct_1(var_0.e.xwz), _wgslsmith_add_u32(4294967295u, u_input.c.x), Struct_1(vec3<bool>(!(!var_1.x), func_2(vec3<i32>(0i, 0i, u_input.d.x), max(vec4<u32>(27608u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(29912u, u_input.c.x, 4294967295u, 1u))).a.x, true)), var_0.e, var_0.e);
    global2 = countOneBits(11706i);
    return select(vec4<bool>(!any(vec2<bool>(false, false)), true, !all(func_4(vec4<u32>(var_0.b, 5505u, 99954u, 20171u), var_0.c, false, u_input.d.x).a.xz), false), !var_2.d, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 13>();
    global2 = 1i;
    global3 = array<vec4<i32>, 16>();
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(23329u, u_input.c.x), abs(4294967295u), max(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 7369u), u_input.c.x), _wgslsmith_sub_u32(0u & u_input.c.x, 1u))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true))), !vec4<bool>(true, (u_input.a <= 12571i) || false, -u_input.a > u_input.a, all(vec4<bool>(true, true, false, true))), !(!func_1()));
    global3 = array<vec4<i32>, 16>();
    let var_1 = 24049i;
    global4 = array<vec2<bool>, 26>();
    global4 = array<vec2<bool>, 26>();
    global1 = array<vec2<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(125f, _wgslsmith_f_op_f32(ceil(-1024f)), 916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-203f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1361f, 1374f, 591f, 1220f), vec4<f32>(1932f, 280f, -1000f, -1221f), false))))), func_6(~u_input.c.zx, reverseBits(select(-17855i, -1i, false)), select(func_2(vec3<i32>(2147483647i, 0i, 855i), vec4<u32>(u_input.c.x, 1u, 0u, u_input.c.x)).a, var_0.d.zww, select(var_0.c.a, var_0.c.a, var_0.d.x))).e)));
}

