struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_4,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec4<u32>(25237u, 0u, 22302u, 22638u), vec3<i32>(-12586i, -52329i, -22577i), Struct_4(vec2<bool>(false, true), 999f, Struct_1(vec2<bool>(true, true)), 300f, Struct_1(vec2<bool>(false, false))), vec3<f32>(527f, 366f, 1463f)), Struct_5(vec4<u32>(16461u, 4294967295u, 19035u, 7031u), vec3<i32>(0i, -1i, -23526i), Struct_4(vec2<bool>(false, false), -327f, Struct_1(vec2<bool>(false, false)), 185f, Struct_1(vec2<bool>(true, false))), vec3<f32>(-941f, -759f, -755f)), Struct_5(vec4<u32>(69157u, 4294967295u, 4294967295u, 8713u), vec3<i32>(2147483647i, i32(-2147483648), 12244i), Struct_4(vec2<bool>(true, true), -103f, Struct_1(vec2<bool>(false, true)), -405f, Struct_1(vec2<bool>(false, false))), vec3<f32>(-111f, 201f, -1222f)), Struct_5(vec4<u32>(51094u, 0u, 25599u, 4923u), vec3<i32>(i32(-2147483648), 0i, 2147483647i), Struct_4(vec2<bool>(true, false), 460f, Struct_1(vec2<bool>(true, true)), 829f, Struct_1(vec2<bool>(true, false))), vec3<f32>(674f, 1000f, 605f)), Struct_5(vec4<u32>(0u, 3397u, 4294967295u, 4294967295u), vec3<i32>(-1i, -34628i, -64065i), Struct_4(vec2<bool>(false, true), 288f, Struct_1(vec2<bool>(true, true)), 704f, Struct_1(vec2<bool>(false, true))), vec3<f32>(-1000f, -703f, 1061f)), Struct_5(vec4<u32>(38036u, 0u, 0u, 4294967295u), vec3<i32>(1i, -8778i, 0i), Struct_4(vec2<bool>(false, true), 276f, Struct_1(vec2<bool>(false, false)), 826f, Struct_1(vec2<bool>(false, true))), vec3<f32>(264f, 158f, 1955f)), Struct_5(vec4<u32>(45473u, 891u, 0u, 4294967295u), vec3<i32>(47958i, 39802i, 14924i), Struct_4(vec2<bool>(true, false), -756f, Struct_1(vec2<bool>(true, true)), 1143f, Struct_1(vec2<bool>(false, false))), vec3<f32>(2913f, -1000f, 1616f)), Struct_5(vec4<u32>(0u, 16399u, 33570u, 58685u), vec3<i32>(20523i, 1i, 2147483647i), Struct_4(vec2<bool>(true, false), 247f, Struct_1(vec2<bool>(true, true)), -667f, Struct_1(vec2<bool>(false, false))), vec3<f32>(-1000f, -1696f, 126f)), Struct_5(vec4<u32>(0u, 0u, 56u, 0u), vec3<i32>(20977i, 1i, 2147483647i), Struct_4(vec2<bool>(true, true), -507f, Struct_1(vec2<bool>(true, true)), -1000f, Struct_1(vec2<bool>(true, true))), vec3<f32>(2320f, -538f, -167f)), Struct_5(vec4<u32>(0u, 3635u, 0u, 10032u), vec3<i32>(i32(-2147483648), 23757i, -1i), Struct_4(vec2<bool>(false, true), 270f, Struct_1(vec2<bool>(false, false)), -1000f, Struct_1(vec2<bool>(false, false))), vec3<f32>(-1856f, 238f, -1000f)), Struct_5(vec4<u32>(11488u, 34108u, 9269u, 47297u), vec3<i32>(-441i, 1i, -1i), Struct_4(vec2<bool>(false, true), -528f, Struct_1(vec2<bool>(true, true)), 730f, Struct_1(vec2<bool>(false, true))), vec3<f32>(806f, -288f, 458f)), Struct_5(vec4<u32>(1u, 8772u, 0u, 53187u), vec3<i32>(-45885i, 0i, 92800i), Struct_4(vec2<bool>(false, true), 971f, Struct_1(vec2<bool>(false, true)), -656f, Struct_1(vec2<bool>(true, false))), vec3<f32>(1305f, -1659f, 1000f)), Struct_5(vec4<u32>(26176u, 104801u, 0u, 4294967295u), vec3<i32>(-358i, 1i, -6707i), Struct_4(vec2<bool>(true, false), 1141f, Struct_1(vec2<bool>(false, false)), 318f, Struct_1(vec2<bool>(true, false))), vec3<f32>(-1464f, -1856f, 238f)), Struct_5(vec4<u32>(0u, 11464u, 17981u, 4294967295u), vec3<i32>(i32(-2147483648), -23548i, i32(-2147483648)), Struct_4(vec2<bool>(true, false), -643f, Struct_1(vec2<bool>(true, false)), 154f, Struct_1(vec2<bool>(false, true))), vec3<f32>(-1000f, 1677f, 1811f)), Struct_5(vec4<u32>(4294967295u, 4294967295u, 26434u, 51157u), vec3<i32>(1i, 2147483647i, 1i), Struct_4(vec2<bool>(true, false), 377f, Struct_1(vec2<bool>(true, true)), 513f, Struct_1(vec2<bool>(true, false))), vec3<f32>(-1000f, -889f, -840f)), Struct_5(vec4<u32>(1u, 12491u, 80884u, 7767u), vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_4(vec2<bool>(false, true), -216f, Struct_1(vec2<bool>(false, false)), -207f, Struct_1(vec2<bool>(true, true))), vec3<f32>(2030f, -122f, -1000f)), Struct_5(vec4<u32>(4294967295u, 25382u, 91270u, 4294967295u), vec3<i32>(-30539i, -20798i, 2071i), Struct_4(vec2<bool>(false, false), -723f, Struct_1(vec2<bool>(false, true)), -1000f, Struct_1(vec2<bool>(false, true))), vec3<f32>(167f, 1449f, 996f)), Struct_5(vec4<u32>(26490u, 669u, 7493u, 29064u), vec3<i32>(21086i, 22483i, 1i), Struct_4(vec2<bool>(false, false), -188f, Struct_1(vec2<bool>(false, false)), -126f, Struct_1(vec2<bool>(true, false))), vec3<f32>(679f, -282f, -1388f)));

var<private> global1: vec2<f32>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 1u, 2933u);

var<private> global3: vec2<i32>;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1689f)), _wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-416f + -978f))));
    var var_0 = global2.x;
    let var_1 = _wgslsmith_mod_i32(min(arg_1.b ^ (-3489i >> (global2.x % 32u)), -1i) | _wgslsmith_mult_i32(max(max(arg_1.b, -44156i), u_input.b.x), abs(u_input.b.x) << (global2.x % 32u)), -1i);
    global1 = global4.zy;
    var var_2 = ~(~_wgslsmith_mult_vec3_u32(global2.wzz, vec3<u32>(33465u, 0u, 9015u)) & vec3<u32>(firstLeadingBit(~0u), 132u, ~reverseBits(global2.x)));
    return Struct_1(!arg_0.wx);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(global2.x, 18u)];
    let var_1 = Struct_3(var_0.c.e.a, ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-823f * global1.x))))), var_0.c.e);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.d)))) * _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.d, vec3<f32>(arg_2, arg_2, 407f))), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.d + 1377f), _wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(trunc(-1694f))))));
    global1 = _wgslsmith_f_op_vec2_f32(-var_2.xz);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(321f, 363f))), 1275f), _wgslsmith_f_op_vec2_f32(-var_2.yy))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-494f, _wgslsmith_f_op_f32(-1819f * _wgslsmith_div_f32(-1472f, global1.x))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1147f, var_2.x))))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0.b.x, -26264i), _wgslsmith_mult_i32(reverseBits(1i), max(66976i | var_1.b, 4173i ^ global3.x)), -1i), vec3<i32>(_wgslsmith_clamp_i32(-(u_input.a & global3.x), var_1.b, countOneBits(_wgslsmith_add_i32(arg_0, u_input.b.x))), ~(-1i), firstTrailingBit(~(~(-7107i)))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> Struct_5 {
    global1 = vec2<f32>(global4.x, 1195f);
    var var_0 = _wgslsmith_mult_vec3_i32(~select(vec3<i32>(u_input.b.x, 42968i, ~(-2147483647i)), vec3<i32>(~global3.x, -51039i, 1i), (-1000f >= global1.x) & false), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -global3.x, i32(-1i) * -2147483647i) ^ (select(vec3<i32>(51522i, arg_0, arg_0), vec3<i32>(-41832i, global3.x, -67583i), arg_2.x) | -vec3<i32>(u_input.b.x, arg_0, u_input.a)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(11050i, global3.x, u_input.a), func_3(u_input.b.x, arg_0, -305f)))));
    let var_1 = Struct_5(~select(vec4<u32>(61060u, global2.x, global2.x, arg_1) ^ _wgslsmith_div_vec4_u32(vec4<u32>(8749u, global2.x, arg_1, arg_1), vec4<u32>(1u, arg_1, global2.x, global2.x)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(global2.zzz, vec3<u32>(21255u, 0u, arg_1)), arg_1, _wgslsmith_div_u32(47946u, 70921u)), vec4<bool>(false, arg_2.x, any(vec4<bool>(arg_2.x, arg_2.x, false, true)), arg_2.x)), vec3<i32>(_wgslsmith_add_i32(arg_0, _wgslsmith_mod_i32(-36717i, var_0.x) | -16117i), reverseBits(_wgslsmith_mod_i32(reverseBits(u_input.b.x), -32953i)), 0i), Struct_4(select(!(!vec2<bool>(arg_2.x, true)), arg_2.xx, arg_2.zy), global1.x, func_1(vec4<bool>(true, true, true, true), Struct_3(arg_2.zy, ~u_input.a, 1143f, Struct_1(arg_2.xy))), _wgslsmith_f_op_f32(ceil(-1000f)), func_1(vec4<bool>(true, true, true, any(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))), Struct_3(vec2<bool>(true, true), global3.x, global4.x, Struct_1(arg_2.yz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, -120f), vec3<f32>(-135f, global1.x, -809f))))));
    var var_2 = vec2<bool>(arg_2.x, arg_2.x);
    let var_3 = var_1.c;
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> Struct_5 {
    global0 = array<Struct_5, 18>();
    global3 = _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(~u_input.b, ~vec2<i32>(global3.x, u_input.b.x), vec2<i32>(arg_0.b, arg_0.b)), min(_wgslsmith_mult_vec2_i32(max(vec2<i32>(arg_1.b.x, -1i), vec2<i32>(u_input.b.x, -3370i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, arg_1.b.x), vec2<i32>(-126894i, arg_0.b))), select(_wgslsmith_sub_vec2_i32(countOneBits(arg_1.b.xy), _wgslsmith_sub_vec2_i32(vec2<i32>(26212i, -1i), vec2<i32>(arg_0.b, 7903i))), ~_wgslsmith_mult_vec2_i32(arg_1.b.yx, arg_1.b.xz), arg_0.d.a)));
    var var_0 = Struct_3(!vec2<bool>(arg_0.d.a.x || (arg_1.c.c.a.x && false), true), -(~(-78678i)) & select(firstLeadingBit(u_input.a) ^ reverseBits(-2147483647i), 10614i, !arg_0.a.x), -473f, func_1(select(vec4<bool>(!arg_0.d.a.x, false, arg_1.d.x < global4.x, 2134f >= global4.x), vec4<bool>(false, any(vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.a.x)), global2.x > arg_1.a.x, false), vec4<bool>(!arg_1.c.a.x, !arg_0.a.x, 1i < global3.x, arg_0.d.a.x)), Struct_3(arg_0.a, global3.x, _wgslsmith_f_op_f32(abs(856f)), arg_1.c.e)));
    let var_1 = 0u;
    global4 = func_2(var_0.b, 4294967295u, select(select(vec3<bool>(true, arg_0.d.a.x, !arg_0.d.a.x), vec3<bool>(true, false | arg_1.c.a.x, true), select(!vec3<bool>(arg_1.c.a.x, var_0.d.a.x, true), vec3<bool>(true, true, true), any(arg_1.c.a))), vec3<bool>(func_2(_wgslsmith_mult_i32(-27942i, var_0.b), global2.x, !vec3<bool>(true, var_0.a.x, true)).c.e.a.x, _wgslsmith_f_op_f32(-arg_1.c.b) > -581f, any(!vec3<bool>(arg_1.c.c.a.x, false, true))), var_0.d.a.x)).d;
    return func_2(arg_0.b, select(~arg_1.a.x, arg_1.a.x | arg_1.a.x, true), vec3<bool>(!any(vec4<bool>(var_0.a.x, arg_1.c.c.a.x, true, arg_1.c.c.a.x)), true, arg_0.a.x));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    var var_0 = select(!select(vec3<bool>(true, true, true), select(!vec3<bool>(false, false, arg_1.a.x), select(vec3<bool>(arg_0.c.a.x, true, arg_0.c.e.a.x), vec3<bool>(arg_0.c.a.x, arg_1.a.x, arg_0.c.a.x), arg_0.c.a.x), !arg_0.c.c.a.x), func_4(Struct_3(vec2<bool>(arg_0.c.a.x, arg_0.c.e.a.x), -19398i, -238f, Struct_1(arg_0.c.e.a)), arg_0, 590f).c.c.a.x), select(vec3<bool>(arg_0.c.c.a.x, !(452f >= global4.x), select(-2147483647i >= u_input.a, true, 76926u == arg_0.a.x)), !vec3<bool>(false, true, all(vec4<bool>(false, false, arg_0.c.e.a.x, true))), false), !any(select(select(vec4<bool>(arg_0.c.a.x, true, false, arg_1.c.a.x), vec4<bool>(arg_1.e.a.x, arg_1.e.a.x, true, arg_1.e.a.x), vec4<bool>(false, arg_1.c.a.x, arg_0.c.e.a.x, false)), vec4<bool>(arg_0.c.c.a.x, false, arg_0.c.a.x, false), arg_1.c.a.x)));
    global1 = global4.yy;
    var var_1 = Struct_2(select(select(!(!vec4<bool>(arg_0.c.a.x, arg_0.c.e.a.x, arg_0.c.a.x, false)), select(!vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(var_0.x, arg_1.e.a.x, false, true), vec4<bool>(arg_0.c.a.x, arg_1.e.a.x, true, arg_1.a.x), var_0.x), func_2(u_input.a, arg_0.a.x, vec3<bool>(var_0.x, true, false)).c.e.a.x), select(vec4<bool>(true, arg_1.c.a.x, var_0.x, true), vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_1.c.a.x, var_0.x))), !select(vec4<bool>(arg_1.c.a.x, false, true, arg_1.e.a.x), vec4<bool>(false, arg_1.c.a.x, true, true), !vec4<bool>(arg_1.a.x, arg_1.c.a.x, false, true)), select(vec4<bool>(false, true, any(arg_0.c.e.a), all(arg_1.a)), !(!vec4<bool>(false, arg_0.c.c.a.x, arg_0.c.a.x, false)), vec4<bool>(true, true | var_0.x, false, true))), ~vec2<u32>(arg_0.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 6008u, arg_0.a.x), vec3<u32>(103627u, arg_0.a.x, global2.x)), ~44245u)));
    let var_2 = _wgslsmith_mult_vec3_i32(arg_0.b, -vec3<i32>(-7627i, -17704i, func_2(select(-2147483647i, 3218i, false), ~arg_0.a.x, var_1.a.zyw).b.x));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.d, _wgslsmith_f_op_vec3_f32(-arg_0.d))));
    return ~(~_wgslsmith_sub_u32(select(~global2.x, global2.x, true), ~1u ^ func_2(arg_0.b.x, 1u, vec3<bool>(true, arg_0.c.a.x, arg_0.c.e.a.x)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 18>();
    global4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-523f, global4.x, true))))), _wgslsmith_f_op_f32(-global1.x)), global1.x, global4.x);
    var var_0 = vec4<u32>(~global2.x, global2.x, func_5(func_4(Struct_3(vec2<bool>(true, true), 1i, _wgslsmith_f_op_f32(-256f * 570f), func_1(vec4<bool>(false, false, false, false), Struct_3(vec2<bool>(true, true), 0i, global1.x, Struct_1(vec2<bool>(false, false))))), func_2(~u_input.a, firstTrailingBit(10385u), vec3<bool>(true, true, true)), global4.x), func_4(Struct_3(vec2<bool>(true, true), 1i, -1000f, Struct_1(vec2<bool>(true, true))), Struct_5(vec4<u32>(global2.x, global2.x, 79504u, 1u), ~vec3<i32>(u_input.a, global3.x, global3.x), func_4(Struct_3(vec2<bool>(true, false), 11691i, 1000f, Struct_1(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(global2.x, 18u)], -540f).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global4.x, global4.x))), -2301f).c), ~(~(~5395u)));
    var var_1 = _wgslsmith_f_op_f32(round(1688f));
    var var_2 = Struct_4(vec2<bool>(!all(vec3<bool>(false, true, false)), global4.x >= -312f), _wgslsmith_f_op_f32(489f * global4.x), Struct_1(func_1(vec4<bool>(true, true, false, true), Struct_3(vec2<bool>(true, true), _wgslsmith_sub_i32(u_input.b.x, global3.x), _wgslsmith_f_op_f32(-global4.x), Struct_1(vec2<bool>(true, true)))).a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x))), func_2(-(select(u_input.b.x, 12995i, false) & global3.x), firstTrailingBit(~(~var_0.x)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))).c.e);
    let var_3 = func_4(Struct_3(vec2<bool>(var_2.e.a.x, true), select(global3.x, ~select(global3.x, 2147483647i, false), func_4(Struct_3(vec2<bool>(true, var_2.e.a.x), u_input.b.x, var_2.b, Struct_1(vec2<bool>(var_2.a.x, false))), func_4(Struct_3(vec2<bool>(true, var_2.a.x), global3.x, global4.x, var_2.c), global0[_wgslsmith_index_u32(global2.x, 18u)], -715f), _wgslsmith_f_op_f32(global4.x * -1000f)).c.e.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b))))), Struct_1(!func_1(vec4<bool>(true, var_2.a.x, var_2.c.a.x, var_2.e.a.x), Struct_3(var_2.c.a, 1i, -339f, var_2.e)).a)), func_2(global3.x, ~8160u, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, var_2.a.x), vec3<bool>(var_2.e.a.x, var_2.e.a.x, var_2.a.x), var_2.a.x), select(false, true, var_2.e.a.x)), !vec3<bool>(true, var_2.e.a.x, true), func_1(vec4<bool>(true, var_2.a.x, var_2.c.a.x, var_2.a.x), Struct_3(var_2.c.a, -32362i, global4.x, var_2.e)).a.x != var_2.e.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1825f))), -631f)).c;
    let var_4 = Struct_3(var_3.e.a, u_input.a, -658f, func_2(-10177i, global2.x, vec3<bool>(true, func_4(Struct_3(var_2.a, -10811i, 1381f, var_2.e), Struct_5(vec4<u32>(14497u, 7278u, 1u, 1u), vec3<i32>(0i, -13297i, -68608i), Struct_4(var_2.c.a, var_3.d, Struct_1(vec2<bool>(var_3.e.a.x, var_2.c.a.x)), -984f, var_2.c), vec3<f32>(global4.x, -131f, global1.x)), 1000f).c.d == _wgslsmith_f_op_f32(var_2.b - global1.x), true)).c.c);
    var_0 = vec4<u32>(select(6821u, var_0.x, false), var_0.x ^ 14410u, ~(~firstTrailingBit(countOneBits(4294967295u))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c - -440f) * _wgslsmith_f_op_f32(var_3.b * var_2.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, var_2.b)))), 3715i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, var_2.b, var_4.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global4.x, -184f))))))));
}

