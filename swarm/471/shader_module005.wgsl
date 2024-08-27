struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(2147483647i, -14452i), vec2<i32>(-1i, 1i), vec2<i32>(49217i, i32(-2147483648)), vec2<i32>(-16304i, 2147483647i), vec2<i32>(2690i, 29483i), vec2<i32>(0i, 8450i), vec2<i32>(1i, 13282i));

var<private> global2: vec2<f32>;

var<private> global3: bool;

var<private> global4: array<vec2<bool>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    var var_0 = abs(_wgslsmith_sub_vec3_u32(arg_2.c.wxz, _wgslsmith_sub_vec3_u32(vec3<u32>(~28098u, 4294967295u, arg_3.a.c), ~_wgslsmith_div_vec3_u32(arg_1, arg_2.c.zwx))));
    global4 = array<vec2<bool>, 7>();
    let var_1 = vec3<bool>(arg_3.a.a.x, true, arg_2.e);
    return arg_3.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    global0 = arg_2;
    var var_0 = ~countOneBits(u_input.b);
    global4 = array<vec2<bool>, 7>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * 1121f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(134f, 938f) * -1000f), global2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3483f, -1324f, global2.x, global2.x) + vec4<f32>(global2.x, 227f, global2.x, 584f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 798f, global2.x, 2029f), vec4<f32>(global2.x, global2.x, global2.x, global2.x), true)))))));
    return 1607f;
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_div_i32(1i, u_input.b);
    let var_1 = Struct_4(vec4<i32>(reverseBits(-u_input.b & max(-2147483647i, u_input.b)), 2147483647i, -16416i, u_input.b), abs(~vec2<u32>(u_input.d, abs(u_input.c))), ~vec4<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_sub_u32(4294967295u, 62462u), 1u) & _wgslsmith_mod_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 8114u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 0u)), vec4<u32>(0u, u_input.c, u_input.a.x, 7220u)), _wgslsmith_mult_vec4_u32(vec4<u32>(9604u, u_input.d, u_input.d, 25134u), vec4<u32>(u_input.c, u_input.d, 47925u, 4294967295u) & vec4<u32>(4294967295u, 4294967295u, u_input.c, 5166u))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_3(Struct_1(!vec2<bool>(global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), true), 1u), Struct_3(func_2(vec3<i32>(-6412i, u_input.b, 23943i), vec3<u32>(u_input.d, 0u, u_input.a.x), Struct_4(vec4<i32>(u_input.b, 1i, 2147483647i, 0i), vec2<u32>(4294967295u, 0u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec3<f32>(global2.x, -824f, 158f), false), Struct_3(Struct_1(vec2<bool>(true, global0.x), vec4<bool>(false, true, global0.x, global0.x), 20973u)))), !(!vec4<bool>(false, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(1688f - 110f)))), !global0.x);
    var_0 = u_input.b >> (~var_1.c.x % 32u);
    global1 = array<vec2<i32>, 7>();
    var_0 = -15907i;
    return func_2(countOneBits(-(var_1.a.wwz << (~vec3<u32>(25033u, 1u, var_1.c.x) % vec3<u32>(32u)))), countOneBits(_wgslsmith_add_vec3_u32(var_1.c.zwy, ~_wgslsmith_clamp_vec3_u32(var_1.c.yyw, var_1.c.zxy, var_1.c.yyw))), Struct_4(~(~abs(vec4<i32>(var_1.a.x, -2147483647i, u_input.b, var_1.a.x))), vec2<u32>(u_input.d, ~52701u), var_1.c | firstTrailingBit(var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.d)))), ~(-var_1.a.x) > -1i), Struct_3(Struct_1(!select(global4[_wgslsmith_index_u32(12073u, 7u)], vec2<bool>(var_1.e, global0.x), true), vec4<bool>(!global0.x, false, var_1.e, func_2(var_1.a.xyx, var_1.c.wzx, Struct_4(var_1.a, u_input.a, var_1.c, vec3<f32>(var_1.d.x, -482f, -1186f), var_1.e), Struct_3(Struct_1(vec2<bool>(false, false), vec4<bool>(false, var_1.e, var_1.e, global0.x), var_1.c.x))).b.x), ~min(var_1.c.x, 0u))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, -1585f, 144f) + vec3<f32>(1000f, -1302f, 1292f))) + vec3<f32>(_wgslsmith_div_f32(-535f, -1352f), 1961f, _wgslsmith_f_op_f32(-global2.x)))))));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(142i, 2147483647i, u_input.b, u_input.b)) << (((vec4<u32>(1u, 66875u, u_input.a.x, 4294967295u) << (vec4<u32>(0u, 0u, var_0, 0u) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(1u, 4294967295u, var_0, 3155u))) % vec4<u32>(32u)), vec4<i32>(~1i, u_input.b | min(u_input.b, u_input.b), u_input.b, i32(-1i) * -43005i)), vec4<i32>(u_input.b, min(0i, firstTrailingBit(~u_input.b)), max(_wgslsmith_add_i32(u_input.b, abs(u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -7828i), ~vec2<i32>(1i, -19484i))), i32(-1i) * -1i), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-54189i, u_input.b, 0i, 42070i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -51540i, -7153i, -2147483647i), vec4<i32>(-13204i, u_input.b, 2147483647i, -19640i)), vec4<i32>(-33752i, u_input.b, -1i, 0i)), vec4<i32>(u_input.b, 1i, u_input.b | -35887i, min(-25773i, u_input.b))), -1i, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(~u_input.b, firstTrailingBit(u_input.b))), firstTrailingBit(firstLeadingBit(u_input.b) & -2147483647i)));
    var var_3 = Struct_4(vec4<i32>(i32(-1i) * -5527i, 30925i, var_2.x & 0i, i32(-1i) * -firstLeadingBit(var_2.x)), min(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(66498u, 27370u), vec2<u32>(1u, 4294967295u), global4[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.a), ~u_input.a), ~firstTrailingBit(~(~vec4<u32>(arg_0.c, u_input.a.x, 18227u, arg_0.c))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, -2174f, global2.x) + vec3<f32>(var_1.x, 871f, -582f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(158f, global2.x, var_1.x), vec3<f32>(var_1.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global2.x, var_1.x)), vec3<bool>(global0.x, arg_0.b.x, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1822f, 439f) * vec3<f32>(-1000f, var_1.x, var_1.x)))))), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 14625i, 39874i) ^ vec3<i32>(u_input.b, -27842i, var_2.x)), abs(-vec3<i32>(var_2.x, var_2.x, 1i))) >= 0i);
    let var_4 = ~(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(75129u, 1u), vec2<u32>(0u, 11949u)), arg_0.c) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~72765u), vec2<u32>(abs(u_input.c), _wgslsmith_mod_u32(var_3.b.x, 35766u))) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(ceil(-1247f))))), var_3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, 846f, global2.x, 2165f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2060f, -405f, 1019f, var_1.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -355f), 1441f) + vec4<f32>(-681f, var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(sign(-970f)))), _wgslsmith_dot_vec4_i32(reverseBits(var_3.a), vec4<i32>(u_input.b, var_2.x, var_2.x, 2147483647i)) >= var_3.a.x)), var_3.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 2028f, 1000f, -609f) * vec4<f32>(var_1.x, var_1.x, global2.x, 317f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1994f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1661f, global2.x)) - 260f), var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.yz, vec4<bool>(global0.x, global0.x, var_3.e, true), 35850u), Struct_3(Struct_1(vec2<bool>(global0.x, arg_0.b.x), vec4<bool>(true, true, global0.x, var_3.e), var_4.x)), vec4<bool>(global0.x, arg_0.a.x, arg_0.b.x, arg_0.b.x))) + _wgslsmith_f_op_f32(var_3.d.x + global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(909f)), _wgslsmith_f_op_f32(global2.x + global2.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)))));
    let var_1 = all(vec3<bool>(true, false, any(!vec4<bool>(global0.x, global0.x, true, global0.x)))) | global0.x;
    let var_2 = global0.xwx;
    var var_3 = u_input.a;
    global1 = array<vec2<i32>, 7>();
    let x = u_input.a;
    s_output = func_4(func_1());
}

