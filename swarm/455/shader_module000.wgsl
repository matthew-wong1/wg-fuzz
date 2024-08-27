struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 26> = array<bool, 26>(false, true, false, false, true, false, false, false, false, true, true, false, false, true, false, false, true, true, false, true, false, true, false, true, false, false);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(arg_0.c, select(abs(firstLeadingBit(~vec3<i32>(arg_1.d.e.x, -23215i, arg_1.d.d.x))), vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, -1i, arg_0.c.e.x)), true), Struct_1(arg_0.c.c.zzy, _wgslsmith_dot_vec4_u32(arg_2.a, select(vec4<u32>(arg_1.b.b, 1u, 1u, 8530u) >> (vec4<u32>(6323u, 1u, u_input.c, 8812u) % vec4<u32>(32u)), abs(vec4<u32>(arg_2.b.c.b, 0u, 64620u, arg_0.c.b)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c.x, arg_2.b.c.a.x, arg_0.c.a.x, -1000f)), arg_0.c.c, arg_1.b.d))), _wgslsmith_div_vec3_i32(arg_2.b.c.d, vec3<i32>(1i, 17921i, 18293i)), vec4<i32>(max(_wgslsmith_mult_i32(arg_1.b.c.e.x, global2.x), abs(21180i)), global2.x, -9891i << (~arg_0.b % 32u), arg_2.d.d.x)), ~vec4<i32>(_wgslsmith_sub_i32(8528i ^ arg_0.c.d.x, firstLeadingBit(-1i)), reverseBits(1i), _wgslsmith_dot_vec4_i32(arg_1.d.e, vec4<i32>(arg_2.e.x, u_input.d.x, u_input.b.x, -36660i)), (-2147483647i | arg_0.c.d.x) ^ arg_1.b.c.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1266f));
    global3 = _wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(f32(-1f) * -2130f));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.d.c.www), reverseBits(var_0.a.b) << (~1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(310f, arg_0.c.c.x)), arg_2.d.c.x, _wgslsmith_f_op_f32(abs(-907f)), _wgslsmith_div_f32(114f, 759f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_div_f32(-1103f, var_0.e), -575f, _wgslsmith_div_f32(arg_2.d.a.x, -442f))), var_0.c.d, -arg_0.c.e), abs(firstTrailingBit(vec3<i32>(firstTrailingBit(arg_2.e.x), 1i, _wgslsmith_add_i32(arg_0.c.d.x, arg_1.e.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.c.c.x, arg_2.b.c.c.x, 468f) * var_0.c.c.xxx))) - _wgslsmith_f_op_vec3_f32(-arg_0.c.c.zyz)), ~22078u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, 1263f), _wgslsmith_div_f32(-1000f, var_0.a.c.x), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(var_0.e - 392f))), vec3<i32>(_wgslsmith_mult_i32(var_0.a.d.x, var_0.a.e.x), -(arg_2.b.c.e.x >> (arg_0.b % 32u)), _wgslsmith_div_i32(-5641i, -global2.x)), vec4<i32>(~firstLeadingBit(19458i), -21554i, abs(u_input.d.x), arg_1.d.e.x)), vec4<i32>(min(-93848i, 72274i) & _wgslsmith_mod_i32(firstLeadingBit(-2147483647i), u_input.b.x), i32(-1i) * -(~arg_0.c.d.x), ~global2.x, -30084i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.c.x))));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -608f);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(717f, -862f)), -660f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.c.c.yzz, arg_0.c.c.yzw))));
    return arg_0.d.zww;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = 55638u;
    var var_1 = Struct_3(select(arg_1, select(select(select(arg_1, arg_1, arg_1), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 26u)], arg_1.x, true), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 26u)], false, true)), any(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)]))), arg_1, arg_1), true), ~var_0, Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1411f * arg_0.x), -1000f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wxx + arg_2.a.c.zzy)))), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_2.c.c.x, 992f, 866f)), -_wgslsmith_add_vec3_i32(u_input.b ^ arg_2.b, vec3<i32>(-1i, u_input.b.x, arg_2.d.x) ^ vec3<i32>(31500i, u_input.b.x, u_input.b.x)), ~vec4<i32>(global2.x, u_input.b.x, -45085i, 2147483647i) << (max(countOneBits(vec4<u32>(1u, arg_2.a.b, u_input.c, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 31652u, var_0, arg_2.c.b), vec4<u32>(var_0, 2752u, 42265u, arg_2.c.b), vec4<u32>(4294967295u, arg_2.a.b, var_0, 103828u))) % vec4<u32>(32u))), vec4<bool>(!(-2257f < arg_0.x), false, arg_1.x, true));
    global2 = u_input.a.yz;
    var var_2 = Struct_3(!var_1.d.wxw, _wgslsmith_clamp_u32(max(~var_1.c.b, _wgslsmith_mod_u32(u_input.c, u_input.c) << (arg_2.c.b % 32u)), 1u, ~(~_wgslsmith_div_u32(var_1.b, u_input.c))), var_1.c, select(var_1.d, select(!select(vec4<bool>(false, global0.x, arg_1.x, true), var_1.d, var_1.d), var_1.d, true), var_1.d));
    var var_3 = global2.x ^ (global2.x << (u_input.c % 32u));
    return 0i;
}

fn func_2() -> vec4<i32> {
    let var_0 = true;
    var var_1 = global2.x ^ u_input.d.x;
    var_1 = -36625i;
    let var_2 = global0.x;
    global2 = vec2<i32>(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-187f, 1092f, 818f, 397f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2448f, 1703f, -451f) + vec4<f32>(-1451f, 574f, -444f, -1082f)))), func_3(Struct_3(select(vec3<bool>(var_0, global1[_wgslsmith_index_u32(34966u, 26u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 26u)], true), vec3<bool>(true, global0.x, global1[_wgslsmith_index_u32(4294967295u, 26u)])), 1u, Struct_1(vec3<f32>(1683f, 1143f, -896f), u_input.c, vec4<f32>(-926f, -152f, 752f, 129f), u_input.a, vec4<i32>(global2.x, -2147483647i, global2.x, u_input.d.x)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 26u)], true, false, false)), Struct_4(~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), Struct_3(vec3<bool>(global0.x, var_0, true), u_input.c, Struct_1(vec3<f32>(-922f, -1699f, -1639f), 0u, vec4<f32>(-628f, 1161f, -1062f, -848f), u_input.b, vec4<i32>(global2.x, global2.x, -2147483647i, global2.x)), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 26u)], global0.x)), any(vec4<bool>(global0.x, true, global0.x, global0.x)), Struct_1(vec3<f32>(1169f, -1589f, -687f), 4294967295u, vec4<f32>(-366f, 716f, -1393f, -2091f), u_input.b, vec4<i32>(global2.x, -12709i, global2.x, -10722i)), u_input.b.zy), Struct_4(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c), Struct_3(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 26u)], false), 43952u, Struct_1(vec3<f32>(-676f, 295f, -1889f), 1u, vec4<f32>(1000f, 529f, -1489f, -195f), u_input.b, vec4<i32>(u_input.a.x, 20869i, u_input.b.x, global2.x)), vec4<bool>(global0.x, false, global0.x, global1[_wgslsmith_index_u32(17036u, 26u)])), all(vec4<bool>(global0.x, global0.x, true, global1[_wgslsmith_index_u32(4294967295u, 26u)])), Struct_1(vec3<f32>(707f, 899f, 203f), u_input.c, vec4<f32>(1676f, -2412f, -385f, -912f), vec3<i32>(global2.x, u_input.d.x, -2147483647i), vec4<i32>(2713i, -8290i, u_input.d.x, -29940i)), vec2<i32>(u_input.d.x, 1553i))), Struct_2(Struct_1(vec3<f32>(-1303f, 1588f, 2246f), u_input.c, vec4<f32>(-940f, 493f, -936f, -2164f), u_input.a, reverseBits(vec4<i32>(u_input.a.x, global2.x, global2.x, -59464i))), u_input.b >> ((vec3<u32>(u_input.c, 33342u, 23204u) | vec3<u32>(u_input.c, u_input.c, u_input.c)) % vec3<u32>(32u)), Struct_1(vec3<f32>(485f, 1268f, 330f), u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1737f, 2621f, -846f, 1667f) * vec4<f32>(227f, -144f, 786f, 517f)), ~vec3<i32>(u_input.a.x, global2.x, -47288i), reverseBits(vec4<i32>(44205i, u_input.d.x, 1i, u_input.b.x))), -vec4<i32>(u_input.d.x, -40656i, 1i, 2147483647i), 1f)), global2.x);
    return abs(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(23036i, 20367i, 0i, -23752i), vec4<i32>(35390i, u_input.b.x, 2147483647i, -2147483647i)), -vec4<i32>(1i, u_input.a.x, global2.x, 2147483647i))) << (vec4<u32>(1u, u_input.c, u_input.c, ~select(u_input.c, ~0u, global1[_wgslsmith_index_u32(19695u, 26u)])) % vec4<u32>(32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.d.a.x;
    let var_1 = ~_wgslsmith_sub_u32(arg_0.d.b, ~_wgslsmith_add_u32(4294967295u, u_input.c)) | min(4294967295u, ~4294967295u);
    var var_2 = arg_0.b.c;
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a & max(vec4<u32>(4294967295u, arg_0.b.b, var_2.b, u_input.c), arg_0.a), ~arg_0.a), abs(vec4<u32>(24800u, var_1 ^ 8969u, var_2.b, var_1))), var_1, ~(~_wgslsmith_add_u32(~var_1, _wgslsmith_dot_vec3_u32(arg_0.a.xwy, arg_0.a.wyz))));
    let var_4 = -1367f;
    return ~arg_0.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.a.xz) | _wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.d ^ u_input.d), vec2<i32>(global2.x, -10685i));
    let var_1 = ~func_5(Struct_4(countOneBits(~vec4<u32>(u_input.c, arg_0.x, 25846u, 17786u)), Struct_3(vec3<bool>(global0.x, true, false), firstLeadingBit(4294967295u), Struct_1(vec3<f32>(-113f, -1848f, -395f), 1u, vec4<f32>(-1374f, 1078f, 1000f, -122f), vec3<i32>(19796i, -1i, 2147483647i), vec4<i32>(2147483647i, 1i, u_input.b.x, 2080i)), !vec4<bool>(true, global0.x, global0.x, false)), all(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global0.x, false)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2524f, -218f, -136f))), 4294967295u, vec4<f32>(400f, 1210f, -1212f, -1528f), vec3<i32>(u_input.b.x, var_0.x, var_0.x), func_2()), vec2<i32>(u_input.a.x, u_input.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, -1015f, 506f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, -1098f, 1763f))), _wgslsmith_mod_u32(~u_input.c, 93500u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1353f, -692f, -1037f, 2215f) * vec4<f32>(817f, 144f, -974f, 1462f)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -45544i, global2.x), vec3<i32>(-2147483647i, global2.x, var_0.x), ~vec3<i32>(var_0.x, var_0.x, var_0.x)), vec4<i32>(-37319i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, global2.x, 44834i)), ~var_0.x, _wgslsmith_div_i32(36231i, 12458i))));
    global3 = -189f;
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f)) - 855f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(291f)), _wgslsmith_f_op_f32(-202f + -1957f)))))));
    let var_2 = func_3(Struct_3(select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 26u)], false)), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.x, 26u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(15846u, 26u)], global1[_wgslsmith_index_u32(var_1.x, 26u)]), vec3<bool>(false, false, false)), func_3(Struct_3(vec3<bool>(false, true, global0.x), 89250u, Struct_1(vec3<f32>(1529f, -1758f, 597f), 63143u, vec4<f32>(1000f, 1780f, 214f, 782f), u_input.b, vec4<i32>(11043i, global2.x, -1972i, var_0.x)), vec4<bool>(global1[_wgslsmith_index_u32(61440u, 26u)], global0.x, false, global1[_wgslsmith_index_u32(var_1.x, 26u)])), Struct_4(vec4<u32>(58304u, u_input.c, 4294967295u, 1u), Struct_3(vec3<bool>(global0.x, global0.x, false), 4294967295u, Struct_1(vec3<f32>(311f, 1804f, -676f), var_1.x, vec4<f32>(-1225f, 1288f, -2596f, 1803f), u_input.b, vec4<i32>(u_input.b.x, 0i, u_input.a.x, global2.x)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], false, false, global1[_wgslsmith_index_u32(8865u, 26u)])), global1[_wgslsmith_index_u32(0u, 26u)], Struct_1(vec3<f32>(-482f, 795f, 310f), var_1.x, vec4<f32>(-263f, -1722f, -553f, -541f), u_input.b, vec4<i32>(global2.x, global2.x, global2.x, 6130i)), vec2<i32>(global2.x, var_0.x)), Struct_4(vec4<u32>(arg_0.x, u_input.c, u_input.c, var_1.x), Struct_3(vec3<bool>(global0.x, false, true), arg_0.x, Struct_1(vec3<f32>(-1179f, 1494f, -524f), var_1.x, vec4<f32>(-142f, 791f, -1100f, -490f), u_input.b, vec4<i32>(global2.x, 1i, -40688i, 1i)), vec4<bool>(global0.x, global0.x, true, true)), true, Struct_1(vec3<f32>(-519f, -136f, 1003f), 4294967295u, vec4<f32>(1081f, 624f, -912f, -1155f), u_input.a, vec4<i32>(2147483647i, 22627i, 3033i, 8744i)), u_input.a.zy))), _wgslsmith_add_u32(~(var_1.x >> (arg_0.x % 32u)), firstLeadingBit(var_1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, 1406f, -3054f)))), _wgslsmith_mult_u32(~24064u, reverseBits(arg_0.x)), vec4<f32>(1f, 1f, 1f, 1f), u_input.a, ~(-vec4<i32>(u_input.a.x, -1i, 23448i, 2147483647i))), !vec4<bool>(global0.x | global1[_wgslsmith_index_u32(29818u, 26u)], all(vec4<bool>(true, true, false, global0.x)), true, all(vec3<bool>(true, false, global0.x)))), Struct_4(_wgslsmith_div_vec4_u32(var_1, abs(var_1) ^ vec4<u32>(var_1.x, arg_0.x, 0u, 64577u)), Struct_3(vec3<bool>(any(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 26u)], false)), true, any(vec4<bool>(global0.x, global0.x, false, true))), 8089u, Struct_1(vec3<f32>(1f, 1f, 1f), 8622u >> (var_1.x % 32u), vec4<f32>(1247f, 497f, 352f, 529f), -u_input.b, -vec4<i32>(var_0.x, 5845i, -2147483647i, 1i)), vec4<bool>(all(vec4<bool>(global0.x, global0.x, false, global0.x)), !global1[_wgslsmith_index_u32(4294967295u, 26u)], false, global1[_wgslsmith_index_u32(1u, 26u)] || true)), true, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, 1074f, -557f)) - vec3<f32>(1000f, 539f, -1167f)), ~(~38356u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 2937f, 1449f, -1355f))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, 11111i, var_0.x), u_input.b), ~u_input.a), vec4<i32>(1i, 49978i, _wgslsmith_div_i32(u_input.b.x, 2147483647i), -2147483647i)), vec2<i32>(abs(global2.x), ~var_0.x)), Struct_4(min(max(~var_1, vec4<u32>(52451u, arg_0.x, 4294967295u, 4294967295u)), vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.c, var_1.x, var_1.x), ~var_1.x, 4294967295u)), Struct_3(!vec3<bool>(global0.x, false, global0.x), func_5(Struct_4(vec4<u32>(1u, u_input.c, 4294967295u, 4294967295u), Struct_3(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 26u)], false), var_1.x, Struct_1(vec3<f32>(1073f, -673f, 178f), arg_0.x, vec4<f32>(560f, 1000f, 748f, -763f), vec3<i32>(1i, u_input.d.x, global2.x), vec4<i32>(0i, -22810i, 1i, -2147483647i)), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 26u)], global0.x, global0.x, global0.x)), global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(vec3<f32>(-640f, -2291f, 507f), arg_0.x, vec4<f32>(-729f, -625f, -252f, -847f), vec3<i32>(global2.x, u_input.d.x, -1i), vec4<i32>(global2.x, 27481i, global2.x, global2.x)), vec2<i32>(2147483647i, global2.x)), Struct_1(vec3<f32>(-190f, 131f, 185f), 78700u, vec4<f32>(-664f, 682f, -1589f, -111f), u_input.b, vec4<i32>(-33325i, 43848i, u_input.d.x, u_input.a.x))).x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, -688f, 1003f)), abs(4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1200f, 924f, -574f, -646f) - vec4<f32>(635f, -1000f, 570f, -149f)), u_input.b, vec4<i32>(global2.x, u_input.b.x, var_0.x, 0i)), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 26u)], true, global1[_wgslsmith_index_u32(3878u, 26u)], false), select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, false, global0.x, global1[_wgslsmith_index_u32(3239u, 26u)]), vec4<bool>(false, global0.x, true, global0.x)), false)), !global0.x, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, -970f, 639f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1277f, 712f, 965f))), _wgslsmith_sub_u32(abs(27210u), u_input.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-179f, -218f, 1000f, -2572f))), vec4<f32>(-271f, 1000f, 115f, 1226f))), vec3<i32>(var_0.x, -40151i, global2.x) ^ -vec3<i32>(global2.x, global2.x, 44278i), vec4<i32>(u_input.d.x, -1i, var_0.x, u_input.b.x) & abs(vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, -20431i))), vec2<i32>(-1i) * -(~u_input.b.zz)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(407f, -1000f, 1062f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-352f)), _wgslsmith_f_op_f32(-2906f - 470f), _wgslsmith_f_op_f32(f32(-1f) * -590f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, -1174f) * vec3<f32>(412f, 203f, -254f))))), 16948u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), -454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -263f)))), -1173f), -select(firstLeadingBit(-vec3<i32>(37876i, -1i, 2147483647i)), select(u_input.a, -u_input.b, !var_2.x), vec3<bool>(var_2.x, !global1[_wgslsmith_index_u32(u_input.c, 26u)], 25946u < u_input.c)), vec4<i32>(-1i) * -abs(~vec4<i32>(-2147483647i, 5521i, 1i, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(~(u_input.c >> (u_input.c % 32u)) | select(~u_input.c, ~u_input.c, global0.x), ~(~4294967295u), ~u_input.c));
    var var_1 = Struct_4(abs(vec4<u32>(39773u, u_input.c, abs(~var_0.b), 11101u)), Struct_3(vec3<bool>(false, false, all(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.b, 26u)], global0.x, global0.x))), _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, var_0.b, 47412u, 0u))), Struct_1(var_0.c.wyw, _wgslsmith_sub_u32(0u, var_0.b), vec4<f32>(_wgslsmith_f_op_f32(select(729f, 385f, global1[_wgslsmith_index_u32(1u, 26u)])), 982f, -833f, _wgslsmith_f_op_f32(var_0.a.x + 673f)), max(-u_input.b, abs(vec3<i32>(var_0.e.x, 16462i, -7595i))), vec4<i32>(-3299i | u_input.d.x, _wgslsmith_clamp_i32(-2214i, u_input.a.x, -2147483647i), firstTrailingBit(global2.x), global2.x)), select(vec4<bool>(global0.x, true, any(vec2<bool>(global1[_wgslsmith_index_u32(25981u, 26u)], global0.x)), false), select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], true, global0.x), select(vec4<bool>(false, global1[_wgslsmith_index_u32(30927u, 26u)], global1[_wgslsmith_index_u32(25056u, 26u)], true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(33931u, 26u)], true), vec4<bool>(false, false, false, global0.x)), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 26u)]), true)), false, func_1(~(~(~vec3<u32>(4294967295u, u_input.c, var_0.b)))), select(vec2<i32>(u_input.b.x, var_0.e.x), vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.e.yzx, u_input.a), -1i), vec2<bool>(global1[_wgslsmith_index_u32(~u_input.c, 26u)], false)));
    var var_2 = vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_div_f32(var_1.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(step(var_1.d.c.x, -991f)))))), var_0.a.x);
    let var_3 = firstLeadingBit(-1i);
    var_0 = func_1(var_1.a.xzy);
    var_1 = Struct_4(select(var_1.a, vec4<u32>(~(~37970u), reverseBits(var_0.b), 38194u, 4294967295u), true), Struct_3(select(vec3<bool>(any(global0.zx), any(var_1.b.d), global1[_wgslsmith_index_u32(var_0.b, 26u)]), func_3(var_1.b, Struct_4(var_1.a, var_1.b, var_1.c, var_1.b.c, vec2<i32>(9583i, var_1.e.x)), Struct_4(var_1.a, var_1.b, global0.x, Struct_1(vec3<f32>(var_0.c.x, var_1.b.c.c.x, 1561f), 32503u, vec4<f32>(var_2.x, 539f, var_1.b.c.a.x, var_1.d.c.x), var_1.b.c.e.wxy, vec4<i32>(var_1.e.x, -1i, var_1.e.x, -16878i)), vec2<i32>(3781i, -4325i))), var_1.b.a), countOneBits(1u), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.d.c.zwy, var_0.c.zyx), vec3<f32>(1929f, 1473f, -389f))), firstLeadingBit(func_1(var_1.a.yxw).b), var_1.b.c.c, u_input.b, reverseBits(vec4<i32>(u_input.d.x, 41944i, var_3, global2.x))), var_1.b.d), all(var_1.b.d), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.a.x, 399f))), _wgslsmith_clamp_u32(var_0.b, u_input.c & _wgslsmith_div_u32(u_input.c, var_1.a.x), 4294967295u), _wgslsmith_f_op_vec4_f32(step(var_1.b.c.c, var_0.c)), var_0.d | _wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_1.b.c.d.x, 24000i, global2.x)), reverseBits(vec3<i32>(var_0.e.x, var_0.d.x, u_input.d.x))), vec4<i32>(var_3, 0i, var_3, _wgslsmith_add_i32(var_3 >> (u_input.c % 32u), var_0.d.x))), u_input.a.xx);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1477f)), -394f), _wgslsmith_f_op_f32(round(-1464f))), !(!all(var_1.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(633f, 213f))))), -985f, _wgslsmith_f_op_f32(-var_1.d.a.x));
    let var_5 = _wgslsmith_add_vec4_i32(-(-(vec4<i32>(18820i, var_1.b.c.d.x, 28994i, -58969i) | var_0.e) | vec4<i32>(var_1.e.x, -global2.x, _wgslsmith_div_i32(global2.x, var_0.d.x), _wgslsmith_div_i32(1i, var_1.d.e.x))), var_0.e);
    global2 = var_1.d.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a.x, var_4.x, var_0.c.x));
}

