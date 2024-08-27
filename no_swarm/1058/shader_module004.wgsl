struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(27914i, 0i, 31897i, 1i), 873f, true, false, Struct_1(-5338i, vec3<u32>(28273u, 74768u, 31370u), vec2<u32>(4294967295u, 4294967295u))), Struct_1(0i, vec3<u32>(36670u, 4294967295u, 4294967295u), vec2<u32>(1u, 54878u)), Struct_1(-11071i, vec3<u32>(24746u, 14434u, 78736u), vec2<u32>(1u, 0u)), false), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(16119i, 21235i, 16628i, -4523i), 1787f, true, false, Struct_1(-1i, vec3<u32>(1123u, 16573u, 4294967295u), vec2<u32>(100347u, 9320u))), Struct_1(1i, vec3<u32>(0u, 18213u, 65046u), vec2<u32>(1u, 4294967295u)), Struct_1(-4374i, vec3<u32>(4294967295u, 83342u, 0u), vec2<u32>(38807u, 30046u)), true), Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(1i, 50534i, 1i, 1i), 222f, false, true, Struct_1(-2090i, vec3<u32>(0u, 6356u, 38257u), vec2<u32>(0u, 12375u))), Struct_1(-70824i, vec3<u32>(80085u, 4294967295u, 54521u), vec2<u32>(35843u, 8135u)), Struct_1(-18223i, vec3<u32>(18231u, 45177u, 32397u), vec2<u32>(4294967295u, 1u)), true), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-1i, 32346i, 2147483647i, -1i), 1943f, false, true, Struct_1(-2606i, vec3<u32>(43637u, 48728u, 1u), vec2<u32>(4294967295u, 47682u))), Struct_1(1i, vec3<u32>(0u, 0u, 32299u), vec2<u32>(0u, 4294967295u)), Struct_1(i32(-2147483648), vec3<u32>(1u, 1u, 28039u), vec2<u32>(1u, 13823u)), false), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(0i, 21273i, -10690i, -1i), -483f, true, true, Struct_1(i32(-2147483648), vec3<u32>(1u, 71130u, 12297u), vec2<u32>(22400u, 39231u))), Struct_1(1i, vec3<u32>(1u, 72407u, 1u), vec2<u32>(0u, 86752u)), Struct_1(37815i, vec3<u32>(80034u, 19357u, 53724u), vec2<u32>(54501u, 37550u)), true), Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(-11673i, 699i, -1i, 8462i), -144f, false, true, Struct_1(31246i, vec3<u32>(51946u, 0u, 0u), vec2<u32>(0u, 80234u))), Struct_1(1i, vec3<u32>(39889u, 1u, 4294967295u), vec2<u32>(33562u, 1u)), Struct_1(26412i, vec3<u32>(4294967295u, 1617u, 4294967295u), vec2<u32>(1u, 1u)), false), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i), 876f, false, false, Struct_1(-60625i, vec3<u32>(4294967295u, 28674u, 6706u), vec2<u32>(0u, 4294967295u))), Struct_1(-56183i, vec3<u32>(652u, 1u, 4294967295u), vec2<u32>(6951u, 41084u)), Struct_1(60106i, vec3<u32>(52434u, 40218u, 48544u), vec2<u32>(0u, 1u)), true), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(19100i, 8202i, i32(-2147483648), 2147483647i), 734f, true, true, Struct_1(28603i, vec3<u32>(77500u, 52277u, 13607u), vec2<u32>(40771u, 4294967295u))), Struct_1(-9566i, vec3<u32>(0u, 4294967295u, 45494u), vec2<u32>(4294967295u, 62457u)), Struct_1(-12524i, vec3<u32>(2076u, 35834u, 4294967295u), vec2<u32>(4294967295u, 1u)), true), Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(55368i, 13375i, -1i, 12531i), -605f, false, false, Struct_1(-32751i, vec3<u32>(1u, 24857u, 4294967295u), vec2<u32>(1u, 9963u))), Struct_1(12507i, vec3<u32>(5580u, 62568u, 66126u), vec2<u32>(1u, 1u)), Struct_1(-614i, vec3<u32>(0u, 22144u, 21020u), vec2<u32>(9960u, 0u)), false), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(30845i, -51445i, -1i, 1i), -1143f, false, false, Struct_1(2147483647i, vec3<u32>(0u, 0u, 1u), vec2<u32>(4294967295u, 0u))), Struct_1(i32(-2147483648), vec3<u32>(9154u, 49012u, 62263u), vec2<u32>(13290u, 34664u)), Struct_1(i32(-2147483648), vec3<u32>(12499u, 4294967295u, 80268u), vec2<u32>(1u, 0u)), false), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-1i, i32(-2147483648), 8201i, 1i), 1057f, false, true, Struct_1(19889i, vec3<u32>(4294967295u, 1u, 69010u), vec2<u32>(21217u, 83767u))), Struct_1(43127i, vec3<u32>(0u, 0u, 0u), vec2<u32>(79458u, 39972u)), Struct_1(i32(-2147483648), vec3<u32>(63423u, 48331u, 4294967295u), vec2<u32>(76235u, 0u)), true), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), 421f, true, true, Struct_1(-10942i, vec3<u32>(1u, 4294967295u, 21213u), vec2<u32>(51214u, 1u))), Struct_1(1i, vec3<u32>(4294967295u, 1u, 33301u), vec2<u32>(4294967295u, 52129u)), Struct_1(2147483647i, vec3<u32>(0u, 10752u, 30077u), vec2<u32>(7843u, 4220u)), false));

var<private> global2: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> vec3<i32> {
    var var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -463f);
    var var_2 = Struct_2(-(vec4<i32>(-1i) * -abs(vec4<i32>(30382i, 55025i, 14233i, 6895i))), var_1, !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2, arg_2, arg_1, global2.a), arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-676f))) - var_1) > 1208f, Struct_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 0i, 20229i), vec4<i32>(-1i, 2147483647i, -624i, 2147483647i))) ^ reverseBits(min(1i, 0i)), vec3<u32>(_wgslsmith_mod_u32(0u >> (1u % 32u), 4294967295u >> (global2.c % 32u)), ~select(65289u, arg_0.x, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43332u, 21254u, global2.b.x, var_0.x), global2.b), ~vec4<u32>(global2.c, global2.c, u_input.a, var_0.x))), arg_0));
    var_0 = _wgslsmith_sub_vec4_u32(~global2.b, global2.b);
    return var_2.a.zwz;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = abs(-(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, arg_0.a), vec3<i32>(3168i, arg_0.a, 2147483647i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, 1i, arg_0.a), func_3(global2.b.zy, false, global2.a))));
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a >> (_wgslsmith_mult_u32(u_input.b, global2.c) % 32u), arg_0.c.x << (arg_0.c.x % 32u), arg_0.b.x), global2.b);
    let var_2 = vec2<i32>(arg_0.a, _wgslsmith_mult_i32(select(-(i32(-1i) * -35541i), -min(-41798i, arg_0.a), any(vec2<bool>(true, true))), var_0.x));
    let var_3 = ~(~(~u_input.e.zz));
    let var_4 = _wgslsmith_dot_vec3_i32(~vec3<i32>(~(-43927i), 51624i, var_0.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32((vec3<i32>(0i, var_0.x, -39648i) >> (vec3<u32>(23032u, var_3.x, 49925u) % vec3<u32>(32u))) ^ -vec3<i32>(var_0.x, -3123i, var_2.x), _wgslsmith_div_vec3_i32(abs(vec3<i32>(16437i, 1i, arg_0.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, var_2.x, -2147483647i), vec3<i32>(var_0.x, arg_0.a, var_2.x)))), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_2.x, -2147483647i, arg_0.a), -(vec3<i32>(-1i, var_2.x, -2147483647i) ^ vec3<i32>(arg_0.a, var_0.x, var_0.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1705i, 0i), 8664i, 7827i), ~(vec3<i32>(-16762i, 1i, var_0.x) >> (vec3<u32>(0u, 6632u, 10682u) % vec3<u32>(32u))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_2.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.e.a, 1i, arg_2.d.a, 50570i), vec4<i32>(arg_2.b.a.x, arg_2.c.a, -2147483647i, arg_2.b.e.a))), 30386i, arg_2.c.a), ~(~vec3<u32>(u_input.e.x, _wgslsmith_mod_u32(u_input.d, 4294967295u), firstLeadingBit(arg_2.d.b.x))), reverseBits(vec2<u32>((arg_2.d.c.x << (78441u % 32u)) | ~98860u, _wgslsmith_clamp_u32(24146u, arg_2.b.e.b.x, global2.c))));
    global2 = Struct_4(global2.a, global2.b, ~firstTrailingBit(~18126u) ^ ~firstTrailingBit(~var_0.b.x));
    return Struct_4(any(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.e), vec2<bool>(global2.a, true), !vec2<bool>(arg_2.e, global2.a)), false)), select(global2.b, firstTrailingBit(~vec4<u32>(u_input.c.x, 33141u, u_input.b, 0u)), vec4<bool>(select(global2.a, global2.a, global2.a), true, any(arg_2.a), true)) ^ ~select(~vec4<u32>(4294967295u, u_input.b, arg_2.d.c.x, 1u), global2.b, any(vec3<bool>(true, true, arg_2.a.x))), ~abs(u_input.b));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, 1u), global2.b.x), _wgslsmith_mod_u32(~global2.c, ~1u & (u_input.e.x | 1u)))), 12u)];
    global1 = array<Struct_3, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(103f, 2063f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, var_0.b.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, -135f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -821f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1992f)))), vec2<bool>(true, !global2.a)))));
    var_0 = global1[_wgslsmith_index_u32(global2.c, 12u)];
    global2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -638f)), 1372f, _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.x, u_input.c, vec2<u32>(var_0.b.e.b.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0.b.b, var_0.b.b, var_1.x), vec4<f32>(-296f, 977f, var_0.b.b, var_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1382f, -998f, var_1.x, var_0.b.b), vec4<f32>(var_1.x, var_0.b.b, var_0.b.b, 1000f), vec4<bool>(var_0.e, var_0.e, var_0.a.x, global2.a))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(637f, var_0.b.b, -1000f, -2116f))), vec4<bool>(var_0.a.x, false, global2.a, global2.a))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), 962f, -109f))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global2.b, global2.b), 12u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, _wgslsmith_f_op_f32(-var_1.x), 1f, _wgslsmith_f_op_f32(-var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 163f, -483f, -1497f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1359f, 1018f, -204f, -238f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -1703f, -2784f, -773f) * vec4<f32>(1537f, -1112f, -736f, -2009f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1710f, 1322f, 130f, -2378f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(3348i, -19058i, 11095i)))))), !vec4<bool>(false, global2.a && global2.a, true, !global2.a))));
    global1 = array<Struct_3, 12>();
    let var_1 = vec2<bool>(any(select(vec3<bool>(all(vec4<bool>(global2.a, global2.a, true, true)), false, any(vec2<bool>(true, global2.a))), select(vec3<bool>(false, false, false), vec3<bool>(false, global2.a, global2.a), all(vec4<bool>(true, global2.a, false, global2.a))), true)), any(select(vec3<bool>(false, true && global2.a, true), vec3<bool>(any(vec2<bool>(global2.a, global2.a)), true, true), vec3<bool>(var_0.x != -1315f, true, any(vec2<bool>(true, true))))));
    global0 = -1i;
    let var_2 = Struct_2(vec4<i32>(1i, _wgslsmith_mult_i32(~61622i, 8176i >> (0u % 32u)) >> (~_wgslsmith_sub_u32(u_input.a, 36220u) % 32u), _wgslsmith_sub_i32(~1i, 38245i), 1i), var_0.x, global2.a, global2.a, Struct_1(~2147483647i, func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(0i, vec3<u32>(1u, global2.b.x, 4294967295u), vec2<u32>(6400u, 45820u)), vec4<f32>(-383f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 827f, -414f, var_0.x))), Struct_3(select(var_1, var_1, false), Struct_2(vec4<i32>(36646i, 25040i, 0i, -14306i), 1200f, var_1.x, true, Struct_1(2147483647i, global2.b.yxw, vec2<u32>(4294967295u, u_input.d))), Struct_1(34090i, u_input.c, vec2<u32>(u_input.e.x, 4294967295u)), Struct_1(-2147483647i, global2.b.wxz, vec2<u32>(1u, u_input.e.x)), var_1.x)).b.wyy, global2.b.yy));
    var var_3 = abs(~(vec4<u32>(u_input.b, var_2.e.b.x, _wgslsmith_sub_u32(var_2.e.c.x, 1u), ~19498u) << (vec4<u32>(73386u, reverseBits(44505u), 1u, 0u >> (global2.c % 32u)) % vec4<u32>(32u))));
    var var_4 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(var_2.e.a, global2.b.zyz, var_2.e.b.yx), vec4<f32>(1000f, -1583f, var_2.b, 1000f))))), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(var_2.e.a, var_2.a.x, var_2.a.x))).x)) + _wgslsmith_f_op_f32(func_2(Struct_1(var_2.e.a, var_3.zxx, u_input.c.yx), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_2.b, 815f, var_2.b)))))) - 1162f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.b, 1f, _wgslsmith_div_f32(504f, var_0.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, var_2.b, var_0.x, 1056f), vec4<f32>(var_0.x, 119f, var_2.b, var_2.b)), vec4<f32>(var_0.x, 387f, -1000f, 256f)))));
}

