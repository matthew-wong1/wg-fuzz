struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, false, Struct_1(2179f, vec2<i32>(2147483647i, -30830i), vec2<i32>(-43432i, -36255i), -1i, 634f));

var<private> global1: bool = true;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-217f, vec2<i32>(-4086i, 10247i), vec2<i32>(0i, 2100i), 1i, -1970f), Struct_1(1166f, vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(21881i, 1i), -13611i, 1778f), Struct_1(-1984f, vec2<i32>(14143i, 0i), vec2<i32>(2147483647i, -68745i), -22903i, -208f), Struct_1(1600f, vec2<i32>(0i, -18366i), vec2<i32>(0i, -1i), i32(-2147483648), 1071f), Struct_1(-826f, vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 1i), 15274i, 133f), Struct_1(-1203f, vec2<i32>(-1i, -6000i), vec2<i32>(i32(-2147483648), 5583i), 54589i, 1000f), Struct_1(-725f, vec2<i32>(-17007i, 0i), vec2<i32>(12720i, 45176i), 45857i, 880f), Struct_1(-206f, vec2<i32>(-81347i, 0i), vec2<i32>(0i, 1i), 22592i, 1350f), Struct_1(1061f, vec2<i32>(7892i, 0i), vec2<i32>(1i, -13940i), 51869i, -1482f), Struct_1(293f, vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -32159i), -1i, -317f), Struct_1(-564f, vec2<i32>(58212i, 0i), vec2<i32>(-10643i, 46463i), 0i, 1293f), Struct_1(-1512f, vec2<i32>(2147483647i, 0i), vec2<i32>(-21342i, i32(-2147483648)), -14682i, -919f), Struct_1(-110f, vec2<i32>(-38629i, 3360i), vec2<i32>(-12603i, 0i), i32(-2147483648), -200f), Struct_1(-605f, vec2<i32>(-39580i, -1i), vec2<i32>(1i, i32(-2147483648)), 65009i, 476f), Struct_1(104f, vec2<i32>(-39492i, -77248i), vec2<i32>(3803i, 51841i), 2147483647i, -678f), Struct_1(322f, vec2<i32>(2147483647i, 1i), vec2<i32>(22370i, 1i), i32(-2147483648), 1152f), Struct_1(-2283f, vec2<i32>(1i, 40254i), vec2<i32>(-66978i, -35564i), 2147483647i, 1049f), Struct_1(-1000f, vec2<i32>(2147483647i, 50290i), vec2<i32>(2147483647i, 1i), 1i, 845f), Struct_1(2791f, vec2<i32>(21265i, 29392i), vec2<i32>(1i, -43145i), -19534i, 899f), Struct_1(1574f, vec2<i32>(80217i, 1i), vec2<i32>(13008i, i32(-2147483648)), 11326i, 1039f), Struct_1(-847f, vec2<i32>(i32(-2147483648), -21057i), vec2<i32>(-1i, i32(-2147483648)), 2147483647i, 575f), Struct_1(-127f, vec2<i32>(93721i, 37125i), vec2<i32>(-43499i, -1i), -1i, 1824f), Struct_1(-1081f, vec2<i32>(1i, -27012i), vec2<i32>(0i, 3892i), 1i, -566f), Struct_1(-1642f, vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -13975i), -1i, -891f), Struct_1(-206f, vec2<i32>(-16160i, 2147483647i), vec2<i32>(27496i, 55214i), 1i, 1175f), Struct_1(-959f, vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i), i32(-2147483648), 525f), Struct_1(-1506f, vec2<i32>(-5934i, 0i), vec2<i32>(-2353i, i32(-2147483648)), -21868i, -920f), Struct_1(1295f, vec2<i32>(38846i, 2147483647i), vec2<i32>(2147483647i, 0i), 1i, 1000f));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global3 = array<Struct_1, 28>();
    let var_0 = Struct_2(_wgslsmith_div_u32(1u, ~73678u), true, global0.c);
    global4 = var_0;
    global0 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, countOneBits(global2.x), _wgslsmith_dot_vec2_u32(global2.yy, vec2<u32>(35847u, global0.a)), 9808u), ~(~vec4<u32>(50460u, global2.x, 50442u, 17459u))), global0.b, global4.c);
    var var_1 = _wgslsmith_f_op_f32(-1630f - 1126f);
    return 41944u;
}

fn func_3() -> u32 {
    global0 = Struct_2(~(global2.x & ~4294967295u), -13047i < -(~(u_input.a & -33393i)), global3[_wgslsmith_index_u32(global0.a, 28u)]);
    let var_0 = !all(vec4<bool>(any(!vec3<bool>(global0.b, false, global4.b)), false, global0.b, !any(vec4<bool>(global0.b, true, true, global0.b))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, global0.c.e, -1978f) + vec3<f32>(global4.c.e, global0.c.a, global4.c.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.c.e, global0.c.e, global4.c.e))))))));
    let var_2 = !vec2<bool>(var_0, _wgslsmith_f_op_f32(exp2(global4.c.e)) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.e, -1028f) + _wgslsmith_f_op_f32(global0.c.a * 1125f)));
    global4 = Struct_2(max(13068u, global2.x), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))), _wgslsmith_sub_vec2_i32(global4.c.b, -(vec2<i32>(global0.c.b.x, u_input.a) ^ vec2<i32>(-46692i, global0.c.c.x))), ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.c.d, global4.c.d), global0.c.b), global4.c.b, var_2.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(global0.c.c.x, 1i)), -_wgslsmith_dot_vec2_i32(global0.c.b, vec2<i32>(u_input.a, 3154i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.a + _wgslsmith_f_op_f32(global4.c.e - -633f)) - -1092f)));
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), ~global4.a);
}

fn func_1() -> vec3<u32> {
    var var_0 = select(_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(6694u, 27899u, 4294967295u), vec3<u32>(40345u, 1u, global0.a) ^ vec3<u32>(global2.x, global0.a, global0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 7048u, 464u), vec3<u32>(global4.a, 29754u, global4.a), vec3<u32>(0u, global4.a, 44600u))), vec3<u32>(10138u, func_2(global4.c, vec2<i32>(22635i, global4.c.d)), 17458u << (func_3() % 32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0.a, _wgslsmith_mult_u32(1u, 4294967295u)), ~0u, global4.a), ~(firstLeadingBit(vec3<u32>(15659u, 58922u, 14279u)) >> (vec3<u32>(global0.a, 4294967295u, 9568u) % vec3<u32>(32u)))), vec3<bool>(global4.b, global4.c.a > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-863f + global0.c.e))), any(!(!vec4<bool>(false, global4.b, global4.b, true)))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~var_0.x)), ~_wgslsmith_sub_u32(0u, global2.x)), 28u)];
    var var_2 = countOneBits(abs(-vec3<i32>(u_input.a, u_input.a, var_1.b.x)) | vec3<i32>(_wgslsmith_mult_i32(global0.c.c.x, -2147483647i) >> (~4294967295u % 32u), 0i, 0i));
    var var_3 = Struct_2(42051u, !any(select(vec3<bool>(global4.b, false, true), vec3<bool>(global0.b, global0.b, global0.b), !global0.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.c.a)))), vec2<i32>(abs(2147483647i), 1i), var_1.b, global4.c.c.x, _wgslsmith_f_op_f32(var_1.e - -1542f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.a, global0.c.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e * 1000f)))), 3026f)));
    return min(~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(19984u, global4.a, 4294967295u), var_0.x, var_3.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(~15175u, ~(~4294967295u), 4294967295u), vec3<u32>(~_wgslsmith_mult_u32(global2.x, global0.a), firstTrailingBit(1u), ~(4294967295u << (var_0.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(20777u & _wgslsmith_dot_vec3_u32(func_1() >> (~vec3<u32>(0u, global0.a, global0.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(52338u, global2.x, 106877u), vec3<u32>(global0.a, 12676u, global0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.a, global2.x), vec3<u32>(4294967295u, global4.a, global2.x)))), any(select(vec2<bool>(all(vec3<bool>(global4.b, global4.b, global0.b)), -379f <= global4.c.e), !vec2<bool>(global0.b, false), true != all(vec2<bool>(global0.b, true)))), Struct_1(1074f, max(vec2<i32>(1i, 27110i), select(global4.c.b, vec2<i32>(u_input.a, global4.c.b.x) & vec2<i32>(-3408i, -40961i), !vec2<bool>(false, global4.b))), vec2<i32>(global0.c.d, global0.c.d), _wgslsmith_div_i32(2698i, global4.c.b.x), -764f));
    let var_1 = global4.b;
    var_0 = Struct_2(~global4.a, !global0.b, global4.c);
    var var_2 = !select(!(!(!vec4<bool>(var_0.b, global4.b, global4.b, false))), vec4<bool>(!var_0.b, global0.b, global4.b, ~global2.x == ~var_0.a), !select(!var_0.b, global4.b && global4.b, any(vec4<bool>(var_0.b, true, true, var_0.b))));
    let var_3 = ~select(vec4<u32>(var_0.a, 26484u, 4294967295u, 4294967295u) ^ vec4<u32>(global4.a, global0.a, 1u, global2.x), vec4<u32>(~global2.x, 55516u ^ global0.a, 11821u, _wgslsmith_add_u32(global4.a, global0.a)), true) >> (~(~abs(vec4<u32>(global2.x, 22923u, global2.x, global4.a) | vec4<u32>(1u, 36020u, var_0.a, 30576u))) % vec4<u32>(32u));
    let var_4 = 720f;
    var_0 = Struct_2(~firstTrailingBit(~global4.a << (_wgslsmith_dot_vec3_u32(var_3.xxz, var_3.zyw) % 32u)), false, Struct_1(1698f, vec2<i32>(global4.c.d, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, -1i, 7535i)), vec4<i32>(global0.c.b.x, var_0.c.d, -24637i, 0i))), global4.c.b, _wgslsmith_add_i32(global4.c.c.x & _wgslsmith_dot_vec2_i32(var_0.c.b, global0.c.c), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.a - -963f) - _wgslsmith_f_op_f32(-global4.c.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1518f, global4.a, -(~12671i), ~func_3(), firstTrailingBit(countOneBits(select(-var_0.c.b.x, ~u_input.a, true))));
}

