struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(vec3<u32>(70839u, 1337u, 44069u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u)), -583f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 0u, 0u))), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 51355u)), Struct_2(Struct_1(vec3<u32>(1u, 69886u, 1u)), 723f), vec2<bool>(false, false), Struct_1(vec3<u32>(31202u, 1u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(20793u, 11372u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 54641u, 51306u)), 1420f), vec2<bool>(true, false), Struct_1(vec3<u32>(52878u, 20573u, 1u))), Struct_3(Struct_1(vec3<u32>(0u, 53219u, 9655u)), Struct_2(Struct_1(vec3<u32>(39390u, 1u, 682u)), -1581f), vec2<bool>(false, false), Struct_1(vec3<u32>(0u, 13442u, 37351u))), Struct_3(Struct_1(vec3<u32>(6697u, 29356u, 92633u)), Struct_2(Struct_1(vec3<u32>(0u, 34353u, 4294967295u)), 2593f), vec2<bool>(true, false), Struct_1(vec3<u32>(25810u, 1u, 49764u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 10825u)), Struct_2(Struct_1(vec3<u32>(1624u, 60398u, 37485u)), -983f), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 1u, 0u))), Struct_3(Struct_1(vec3<u32>(70617u, 1u, 23956u)), Struct_2(Struct_1(vec3<u32>(69924u, 103630u, 4294967295u)), 1035f), vec2<bool>(false, true), Struct_1(vec3<u32>(4294967295u, 0u, 4113u))), Struct_3(Struct_1(vec3<u32>(46218u, 1u, 0u)), Struct_2(Struct_1(vec3<u32>(71705u, 6155u, 59522u)), -1063f), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 3868u, 28699u))), Struct_3(Struct_1(vec3<u32>(1u, 0u, 9088u)), Struct_2(Struct_1(vec3<u32>(13274u, 130548u, 53296u)), -486f), vec2<bool>(true, false), Struct_1(vec3<u32>(18894u, 1u, 1u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 41711u)), Struct_2(Struct_1(vec3<u32>(10336u, 0u, 87210u)), -1000f), vec2<bool>(true, false), Struct_1(vec3<u32>(11498u, 79387u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 99415u)), 1078f), vec2<bool>(false, false), Struct_1(vec3<u32>(6990u, 44419u, 64084u))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_2(Struct_1(vec3<u32>(10557u, 4294967295u, 4294967295u)), 276f), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 60672u, 0u))), Struct_3(Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(1u, 60747u, 4294967295u)), 955f), vec2<bool>(true, true), Struct_1(vec3<u32>(4449u, 64718u, 1u))), Struct_3(Struct_1(vec3<u32>(16125u, 0u, 13197u)), Struct_2(Struct_1(vec3<u32>(40590u, 0u, 0u)), 308f), vec2<bool>(true, true), Struct_1(vec3<u32>(0u, 3972u, 1u))), Struct_3(Struct_1(vec3<u32>(46669u, 97860u, 994u)), Struct_2(Struct_1(vec3<u32>(1u, 4965u, 1u)), 524f), vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 1u, 74940u))), Struct_3(Struct_1(vec3<u32>(39464u, 4294967295u, 10041u)), Struct_2(Struct_1(vec3<u32>(1u, 35405u, 63301u)), -821f), vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 42580u, 47080u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 56737u, 50710u)), Struct_2(Struct_1(vec3<u32>(32706u, 0u, 20350u)), -2169f), vec2<bool>(false, false), Struct_1(vec3<u32>(76349u, 1u, 60848u))), Struct_3(Struct_1(vec3<u32>(48214u, 62111u, 0u)), Struct_2(Struct_1(vec3<u32>(5739u, 4294967295u, 4294967295u)), -1350f), vec2<bool>(false, false), Struct_1(vec3<u32>(0u, 72251u, 38744u))), Struct_3(Struct_1(vec3<u32>(6073u, 94967u, 1u)), Struct_2(Struct_1(vec3<u32>(2529u, 4294967295u, 16688u)), -2231f), vec2<bool>(false, false), Struct_1(vec3<u32>(4294967295u, 1u, 7783u))), Struct_3(Struct_1(vec3<u32>(15154u, 4294967295u, 44549u)), Struct_2(Struct_1(vec3<u32>(62080u, 0u, 12524u)), -1419f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 0u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(0u, 95807u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 60604u)), -1000f), vec2<bool>(false, false), Struct_1(vec3<u32>(1u, 1u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(88392u, 0u, 9998u)), Struct_2(Struct_1(vec3<u32>(0u, 1u, 52164u)), -1139f), vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 61034u, 1u))), Struct_3(Struct_1(vec3<u32>(45577u, 0u, 75273u)), Struct_2(Struct_1(vec3<u32>(0u, 23373u, 1u)), 120f), vec2<bool>(true, false), Struct_1(vec3<u32>(11422u, 24930u, 16215u))), Struct_3(Struct_1(vec3<u32>(12329u, 1u, 34139u)), Struct_2(Struct_1(vec3<u32>(19996u, 37287u, 1u)), 1139f), vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 84402u, 54362u))), Struct_3(Struct_1(vec3<u32>(16767u, 0u, 39511u)), Struct_2(Struct_1(vec3<u32>(57532u, 4294967295u, 6331u)), 366f), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(31273u, 4748u, 102170u)), Struct_2(Struct_1(vec3<u32>(0u, 1u, 4294967295u)), -1117f), vec2<bool>(true, true), Struct_1(vec3<u32>(0u, 0u, 4244u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 58684u, 1u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), -654f), vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 4584u, 16786u))), Struct_3(Struct_1(vec3<u32>(36501u, 61442u, 55466u)), Struct_2(Struct_1(vec3<u32>(12525u, 18715u, 1u)), 730f), vec2<bool>(false, true), Struct_1(vec3<u32>(27119u, 16721u, 38356u))), Struct_3(Struct_1(vec3<u32>(53732u, 33206u, 1u)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 36461u)), 1366f), vec2<bool>(true, false), Struct_1(vec3<u32>(34262u, 4294967295u, 20078u))), Struct_3(Struct_1(vec3<u32>(1u, 0u, 42688u)), Struct_2(Struct_1(vec3<u32>(0u, 37254u, 1u)), -464f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 5624u, 33244u))), Struct_3(Struct_1(vec3<u32>(53908u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 70664u, 57505u)), 549f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 12953u, 4294967295u))), Struct_3(Struct_1(vec3<u32>(23177u, 0u, 28632u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u)), -1135f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 57423u, 76559u))));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<u32, 16>();
    var var_0 = firstLeadingBit(u_input.a.x);
    let var_1 = Struct_3(Struct_1(vec3<u32>(~u_input.a.x << (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a.x) % 32u), ~1u & u_input.a.x, _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(15295u, 16u)], 1u))), Struct_2(Struct_1(select(u_input.a, abs(u_input.a), true)), _wgslsmith_f_op_f32(1023f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) + _wgslsmith_f_op_f32(f32(-1f) * -1572f)))), vec2<bool>(true, true), Struct_1(countOneBits(u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(round(693f));
    return var_1.c.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global1 = array<Struct_3, 32>();
    let var_0 = select(select(!select(arg_0, arg_0, true), !select(arg_0, vec2<bool>(true, true), !arg_0), arg_0.x), select(arg_0, !arg_0, !(true && (0u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)]))), func_3());
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_2.a.yz, u_input.a.yx)), vec2<u32>(abs(min(4294967295u, 28491u)), arg_2.a.x)) ^ firstTrailingBit(abs(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(arg_2.a.x, 16u)]), vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, 17513u)))));
    var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(~u_input.a.x, 16u)]);
    let var_2 = Struct_2(Struct_1(arg_2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f + 408f)) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-712f, -1353f), _wgslsmith_f_op_f32(f32(-1f) * -766f), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-512f - -125f)))), true)));
    return var_2;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global1 = array<Struct_3, 32>();
    global0 = array<u32, 16>();
    let var_0 = !vec2<bool>(true, !(!arg_1.c.x));
    global0 = array<u32, 16>();
    let var_1 = Struct_3(Struct_1(u_input.a), Struct_2(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), select(vec3<u32>(7248u, global0[_wgslsmith_index_u32(arg_2.a.a.x, 16u)], 60729u), vec3<u32>(u_input.a.x, 4294967295u, 1u), false))), 218f), select(vec2<bool>(any(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, var_0.x, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_2.c.x, true, var_0.x, true))), var_0.x), vec2<bool>(true, !var_0.x), arg_2.c.x), arg_1.b.a);
    return arg_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> Struct_5 {
    global1 = array<Struct_3, 32>();
    var var_0 = arg_1.x & (firstTrailingBit(u_input.a.x) ^ firstLeadingBit(~(~28346u)));
    global1 = array<Struct_3, 32>();
    let var_1 = 1i;
    var_0 = ~(~31413u);
    return Struct_5(select(select(vec3<bool>(!arg_2, func_3(), false & arg_2), vec3<bool>(all(vec4<bool>(false, arg_2, true, true)), any(vec3<bool>(true, arg_2, false)), -83117i >= arg_3), vec3<bool>(var_1 >= -2147483647i, arg_2, true)), select(select(vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, arg_2), true), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2, true), vec3<bool>(true, true, arg_2))), select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, false, true)), !vec3<bool>(arg_2, arg_2, arg_2)), arg_2), true), u_input.b.x, false, (u_input.a.x << (26056u % 32u)) & ~firstLeadingBit(0u));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    var var_0 = 27674i;
    var var_1 = arg_0.b.b;
    var_0 = u_input.b.x;
    var var_2 = vec4<i32>(func_5(Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(66453u, 16u)], arg_0.e.a.x, 59596u), vec3<u32>(u_input.a.x, arg_0.e.a.x, var_1.a.a.x))), vec3<u32>(_wgslsmith_add_u32(var_1.a.a.x, 1u) | _wgslsmith_div_u32(27294u, 49591u), _wgslsmith_add_u32(~arg_1.d, var_1.a.a.x), 1u), arg_1.c, abs(arg_1.b | _wgslsmith_add_i32(arg_1.b, -9873i))).b, -2147483647i, select(-2147483647i, _wgslsmith_div_i32(~arg_1.b, min(8567i | arg_1.b, arg_1.b)), arg_1.c || any(arg_0.d)), -min(countOneBits(_wgslsmith_mod_i32(arg_1.b, 1i)), -20996i));
    let var_3 = vec3<bool>(arg_0.a.x, any(vec3<bool>(all(arg_1.a), false, !(67699u < global0[_wgslsmith_index_u32(4294967295u, 16u)]))), all(select(func_5(func_2(arg_1.a.yz, -4828i, arg_0.b.b.a).a, vec3<u32>(arg_1.d, arg_0.e.a.x, arg_0.c.b.a.a.x), func_3(), arg_1.b).a, !(!arg_0.a.zww), arg_1.a)));
    return Struct_1(var_1.a.a);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f))))));
    let var_1 = func_6(arg_2, func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -176f)))), arg_2.b, Struct_3(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(21973u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4687u, 16u)], 16u)], arg_2.e.a.x)), func_2(arg_2.c.c, arg_1, Struct_1(arg_2.c.b.a.a)), vec2<bool>(true, true), arg_2.b.a)), arg_2.c.a.a, !arg_2.d.x, _wgslsmith_clamp_i32(countOneBits(u_input.b.x), arg_1 | 1i, -31115i)));
    let var_2 = arg_2;
    let var_3 = true;
    var var_4 = var_2.c.a;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-813f, 471f, var_2.c.b.b, arg_2.b.b.b))))))));
}

fn func_7(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 16>();
    var var_0 = Struct_1(u_input.a);
    let var_1 = _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), ~47466u) ^ 4294967295u, ~var_0.a.x), 16u)], ~func_2(vec2<bool>(arg_1.x >= 0i, true), -countOneBits(-20529i), func_6(Struct_4(vec4<bool>(true, true, true, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(113684u, 16u)], 32u)], global1[_wgslsmith_index_u32(var_0.a.x, 32u)], vec3<bool>(true, true, true), Struct_1(u_input.a)), Struct_5(vec3<bool>(false, true, true), arg_1.x, true, u_input.a.x))).a.a.x);
    var var_2 = !select(vec4<bool>(true, (u_input.a.x << (0u % 32u)) >= _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), select(true, true, any(vec4<bool>(true, true, false, false)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)), true, true), !(func_2(vec2<bool>(false, true), -2147483647i, Struct_1(var_0.a)).b < _wgslsmith_f_op_f32(arg_3.x * 1200f)));
    var_2 = vec4<bool>(!(((67728i ^ arg_1.x) ^ -16865i) >= (min(u_input.b.x, arg_2.x) & -arg_1.x)), any(!func_5(Struct_1(vec3<u32>(4294967295u, var_1, 1u)), vec3<u32>(u_input.a.x, var_1, global0[_wgslsmith_index_u32(var_0.a.x, 16u)]), true, reverseBits(-7988i)).a), var_2.x, !var_2.x);
    return Struct_1(vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(~var_0.a.x, 1u), ~(~select(867u, 1u, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_7(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1450f, -1000f, 709f) + vec3<f32>(-221f, 1366f, -1021f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(300f, 1176f, 380f) * vec3<f32>(-772f, 256f, 131f)))), _wgslsmith_div_vec2_i32(~abs(u_input.b.xy), u_input.b.zx << (u_input.a.zx % vec2<u32>(32u))), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, -979i), u_input.b)), firstTrailingBit(vec3<i32>(-2147483647i, 35835i, u_input.b.x)), ~u_input.b << (vec3<u32>(1u, 99255u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-504f, -764f, -1000f, 811f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, -1186f, -730f, 501f) * vec4<f32>(987f, 195f, 234f, -519f)) * _wgslsmith_f_op_vec4_f32(func_1(u_input.b.x, 2147483647i, Struct_4(vec4<bool>(false, true, false, true), Struct_3(Struct_1(u_input.a), Struct_2(Struct_1(u_input.a), -127f), vec2<bool>(true, false), Struct_1(vec3<u32>(1u, u_input.a.x, 1u))), Struct_3(Struct_1(vec3<u32>(15945u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)])), Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(11370u, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(2609u, 16u)])), -2380f), vec2<bool>(false, false), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, 4294967295u))), vec3<bool>(false, true, false), Struct_1(u_input.a))))))), Struct_2(func_6(Struct_4(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(~4294967295u, 32u)], vec3<bool>(true, true, true), Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], global0[_wgslsmith_index_u32(12700u, 16u)]))), func_5(Struct_1(vec3<u32>(78211u, 70878u, u_input.a.x)), ~u_input.a, true, reverseBits(u_input.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1291f)) + -2831f)))), vec2<bool>(func_5(func_6(Struct_4(vec4<bool>(false, true, false, false), Struct_3(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15410u, 16u)], 16u)], 0u)), Struct_2(Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.a.x)), -231f), vec2<bool>(false, true), Struct_1(vec3<u32>(u_input.a.x, 0u, 74257u))), global1[_wgslsmith_index_u32(4294967295u, 32u)], vec3<bool>(true, true, false), Struct_1(u_input.a)), Struct_5(vec3<bool>(true, true, true), -2147483647i, false, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(11836u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 48258u), u_input.a << (vec3<u32>(15489u, 55127u, u_input.a.x) % vec3<u32>(32u))), 1i >= abs(u_input.b.x), u_input.b.x).a.x, true), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1755f, -295f, 764f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(0u), 16u)], 32u)], Struct_3(Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(74467u, 16u)], global0[_wgslsmith_index_u32(17137u, 16u)])), Struct_2(func_2(vec2<bool>(true, true), 43612i, Struct_1(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(34169u, 16u)]))).a, -656f), vec2<bool>(1i > u_input.b.x, true), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98323u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))))));
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    global1 = array<Struct_3, 32>();
    let var_1 = 22813i;
    global0 = array<u32, 16>();
    var var_2 = Struct_3(Struct_1(~vec3<u32>(1u, var_0.a.a.x, ~1u)), func_2(vec2<bool>(false, !var_0.c.x), -func_5(var_0.a, var_0.d.a, var_0.c.x, var_1).b >> ((global0[_wgslsmith_index_u32(4294967295u, 16u)] >> ((u_input.a.x & global0[_wgslsmith_index_u32(var_0.b.a.a.x, 16u)]) % 32u)) % 32u), Struct_1(max(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(28446u, 4294967295u, 1u), u_input.a, u_input.a)))), vec2<bool>(!(var_0.c.x == false), var_0.c.x), var_0.d);
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(var_0.a.a.x, var_2.d.a.x, var_2.d.a.x, var_0.a.a.x), vec4<u32>(var_2.d.a.x, 0u, 0u, 1u))), ~vec4<u32>(global0[_wgslsmith_index_u32(var_2.d.a.x, 16u)], u_input.a.x, 4294967295u, u_input.a.x)) << (u_input.a.x % 32u), 32u)];
    global1 = array<Struct_3, 32>();
    var_0 = global1[_wgslsmith_index_u32(abs(~reverseBits(_wgslsmith_add_u32(0u, 12108u))), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(var_0.b.a.a.x, 1u, var_0.b.a.a.x) & u_input.a.x, ~global0[_wgslsmith_index_u32(103480u, 16u)]), u_input.b.yz, vec2<u32>(var_0.b.a.a.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a.a.x, 51885u, var_0.b.a.a.x, 0u)), vec4<u32>(~u_input.a.x, var_2.b.a.a.x, 54862u, ~31712u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-835f, -704f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, var_2.b.b)))));
}

