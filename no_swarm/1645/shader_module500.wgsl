struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false, Struct_1(vec4<u32>(121029u, 0u, 0u, 74753u), false, vec3<i32>(-47813i, -16687i, i32(-2147483648))), vec2<i32>(33301i, -1i), 1u), Struct_2(true, Struct_1(vec4<u32>(0u, 4294967295u, 61597u, 47698u), false, vec3<i32>(-18570i, 8939i, 6187i)), vec2<i32>(26484i, 0i), 0u), Struct_2(true, Struct_1(vec4<u32>(1u, 1u, 265u, 0u), true, vec3<i32>(-36928i, 0i, -1i)), vec2<i32>(-15435i, 7857i), 4294967295u), Struct_2(true, Struct_1(vec4<u32>(71090u, 80083u, 728u, 13286u), false, vec3<i32>(-36187i, -15501i, 2147483647i)), vec2<i32>(-35908i, i32(-2147483648)), 29221u), Struct_2(false, Struct_1(vec4<u32>(0u, 0u, 0u, 40391u), false, vec3<i32>(i32(-2147483648), -22254i, -1i)), vec2<i32>(1i, -6994i), 86729u), Struct_2(true, Struct_1(vec4<u32>(0u, 27383u, 0u, 1u), true, vec3<i32>(46664i, -16666i, i32(-2147483648))), vec2<i32>(-7135i, 3336i), 50671u), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), false, vec3<i32>(29917i, -1496i, -37190i)), vec2<i32>(-1i, 2669i), 1u), Struct_2(false, Struct_1(vec4<u32>(25371u, 1u, 4294967295u, 1u), true, vec3<i32>(2026i, 2147483647i, -20384i)), vec2<i32>(-4152i, -6978i), 4294967295u), Struct_2(false, Struct_1(vec4<u32>(42775u, 17214u, 1u, 4294967295u), true, vec3<i32>(-11640i, 1i, -697i)), vec2<i32>(2147483647i, 0i), 81541u), Struct_2(false, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), false, vec3<i32>(0i, 2409i, 2147483647i)), vec2<i32>(2147483647i, 23344i), 4294967295u), Struct_2(true, Struct_1(vec4<u32>(100574u, 0u, 33120u, 76956u), false, vec3<i32>(0i, -399i, 43094i)), vec2<i32>(1i, -22704i), 1481u), Struct_2(true, Struct_1(vec4<u32>(30986u, 4843u, 0u, 38517u), false, vec3<i32>(1i, 9106i, 0i)), vec2<i32>(i32(-2147483648), -2707i), 10178u), Struct_2(true, Struct_1(vec4<u32>(44482u, 38105u, 82302u, 4294967295u), false, vec3<i32>(1i, i32(-2147483648), 1i)), vec2<i32>(4273i, 39746i), 4294967295u), Struct_2(false, Struct_1(vec4<u32>(60270u, 4294967295u, 1u, 62853u), true, vec3<i32>(-10343i, 0i, 1i)), vec2<i32>(1i, 17181i), 65750u), Struct_2(false, Struct_1(vec4<u32>(44727u, 387u, 4294967295u, 1u), false, vec3<i32>(19540i, 1i, -1i)), vec2<i32>(-53241i, 40847i), 58119u), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 115271u, 4294967295u, 4294967295u), true, vec3<i32>(1i, 2147483647i, i32(-2147483648))), vec2<i32>(19562i, -1i), 20371u), Struct_2(true, Struct_1(vec4<u32>(116000u, 73179u, 1u, 24377u), false, vec3<i32>(286i, 30641i, -1i)), vec2<i32>(1i, -34985i), 4294967295u), Struct_2(false, Struct_1(vec4<u32>(26801u, 0u, 4294967295u, 4294967295u), true, vec3<i32>(i32(-2147483648), 6343i, -1i)), vec2<i32>(-3868i, 0i), 34959u), Struct_2(false, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 9819u), false, vec3<i32>(31855i, -7088i, 0i)), vec2<i32>(2147483647i, -35312i), 26030u), Struct_2(false, Struct_1(vec4<u32>(40339u, 1u, 4294967295u, 4294967295u), false, vec3<i32>(0i, 0i, 1i)), vec2<i32>(-2634i, -15205i), 0u), Struct_2(true, Struct_1(vec4<u32>(9003u, 4294967295u, 0u, 81133u), false, vec3<i32>(12364i, -56375i, 2147483647i)), vec2<i32>(-1i, 0i), 14363u), Struct_2(true, Struct_1(vec4<u32>(88787u, 61350u, 21289u, 14710u), true, vec3<i32>(13535i, i32(-2147483648), -18977i)), vec2<i32>(2147483647i, 3991i), 1u), Struct_2(true, Struct_1(vec4<u32>(49249u, 0u, 19814u, 88035u), true, vec3<i32>(2147483647i, 2147483647i, 1i)), vec2<i32>(-37641i, 0i), 1u), Struct_2(true, Struct_1(vec4<u32>(85971u, 1u, 1u, 4294967295u), true, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), vec2<i32>(15055i, -27487i), 4294967295u), Struct_2(false, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u), true, vec3<i32>(i32(-2147483648), i32(-2147483648), 26386i)), vec2<i32>(35569i, 1i), 16900u), Struct_2(false, Struct_1(vec4<u32>(1u, 535u, 24169u, 27134u), false, vec3<i32>(-50774i, -31767i, i32(-2147483648))), vec2<i32>(-29235i, 1i), 4294967295u), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 0u, 15317u, 2933u), false, vec3<i32>(79786i, 46983i, 17389i)), vec2<i32>(-520i, 2147483647i), 84848u), Struct_2(false, Struct_1(vec4<u32>(84140u, 0u, 53598u, 91255u), true, vec3<i32>(19621i, -58601i, 102543i)), vec2<i32>(2147483647i, 1i), 20802u), Struct_2(true, Struct_1(vec4<u32>(56471u, 4294967295u, 54099u, 1u), false, vec3<i32>(1i, 0i, -36457i)), vec2<i32>(-1i, 0i), 16637u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(true, !all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(810f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-622f - -1023f))))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global2 = array<Struct_2, 29>();
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], global2[_wgslsmith_index_u32(u_input.c.x, 29u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, abs(u_input.c.x), ~u_input.c.x), (~vec4<u32>(1u, 38828u, 3162u, u_input.c.x) & ~vec4<u32>(0u, u_input.c.x, 79477u, u_input.c.x)) << ((vec4<u32>(0u, u_input.c.x, 0u, 1u) << (vec4<u32>(0u, 4294967295u, 38757u, 37737u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global2 = array<Struct_2, 29>();
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_mult_u32(var_0.b.d, u_input.c.x)), select(111702u, firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, var_0.a.b.a.x)), true)), var_0.c);
    global2 = array<Struct_2, 29>();
    return _wgslsmith_add_vec3_i32(vec3<i32>(-max(u_input.b, i32(-1i) * -26585i), 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-19412i, 2104i), var_0.a.b.c.yx), -(var_0.a.c.x | -3720i), -17337i | select(1189i, 2147483647i, false))), reverseBits(var_0.b.b.c));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = !(!select(vec2<bool>(all(vec3<bool>(arg_2, arg_1.a.a, false)), arg_1.b.b.b), select(!vec2<bool>(arg_1.b.b.b, arg_1.b.b.b), select(vec2<bool>(true, false), vec2<bool>(arg_2, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = Struct_5(-1939f, firstLeadingBit(min(abs(vec2<i32>(-1125i, -2147483647i)), arg_1.a.c)) ^ (countOneBits(-vec2<i32>(-26895i, u_input.a)) & -select(vec2<i32>(0i, 2147483647i), arg_1.b.c, vec2<bool>(false, arg_1.a.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1743f) * vec2<f32>(-151f, 145f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 547f)))))), arg_1.b, i32(-1i) * -1i);
    var_0 = !select(vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, var_0.x), vec3<bool>(arg_1.b.a, true, false))), var_1.d.a), vec2<bool>(arg_1.a.a, select(true, true, false)), arg_2);
    var var_2 = max(~var_1.d.b.c, vec3<i32>(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, var_1.c.x))).x, var_1.b.x, arg_1.b.c.x));
    let var_3 = arg_1.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1667f, -887f, -1087f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, var_1.c.x, 295f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, -654f, -468f)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> vec2<i32> {
    global2 = array<Struct_2, 29>();
    let var_0 = Struct_3(!vec2<bool>(arg_0, arg_0 | all(vec2<bool>(false, arg_0))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.x)), arg_2.x))) * arg_2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(func_2()), -719f), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_2.x)) * _wgslsmith_f_op_f32(max(arg_2.x, -362f)))), Struct_4(Struct_2(!arg_0, Struct_1(vec4<u32>(4294967295u, u_input.c.x, 1u, 3840u), arg_0, vec3<i32>(-1i, -10785i, 0i)), -vec2<i32>(-1i, arg_1), 72896u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), 29u)], ~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), var_0.a.x, func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.yz - arg_2.yw), _wgslsmith_f_op_vec2_f32(arg_2.zw + vec2<f32>(arg_2.x, -247f)))))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -949f);
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(2147483647i, arg_1))), ~(-vec2<i32>(0i, arg_1) >> (_wgslsmith_div_vec2_u32(vec2<u32>(60513u, 4294967295u), vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u)))), vec2<i32>(0i, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-51873i, -22908i, arg_1), vec3<i32>(2147483647i, u_input.b, arg_1)))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: vec4<f32>) -> f32 {
    var var_0 = vec2<i32>(firstTrailingBit(u_input.b), -1i);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 5>();
    global2 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(2147483647i, 2147483647i, u_input.a, -31487i))) | _wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.b, 2147483647i, -2147483647i, 0i)), max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a)), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a))), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, u_input.a), vec4<i32>(0i, u_input.b, u_input.b, 5493i))) ^ vec4<i32>(1i, ~(-15309i), ~max(17813i, u_input.a), ~1i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(true, var_0.zw, Struct_5(_wgslsmith_f_op_f32(634f * 368f), func_1(true, -2147483647i, vec4<f32>(1101f, -428f, 1454f, 516f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, -195f)), global2[_wgslsmith_index_u32(97847u, 29u)], reverseBits(var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1092f, 510f, 698f, -357f) + vec4<f32>(1241f, -1000f, 144f, -1461f)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1683f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_div_f32(477f, _wgslsmith_f_op_f32(-1204f - -155f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(819f)) + _wgslsmith_f_op_f32(f32(-1f) * -1101f)) * 835f) + _wgslsmith_f_op_f32(step(586f, -1157f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-676f - 2302f))))) - _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(var_2 + 1868f)))));
    var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(false, ~var_0.yx, Struct_5(var_2, var_0.xy, vec2<f32>(-549f, var_2), Struct_2(false, Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 60018u, 71887u), false, var_0.yyz), var_0.xw, 9655u), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -203f, var_2)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1114f * var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-747f)) - -864f))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-34123i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 687f, var_2, var_2))))));
}

