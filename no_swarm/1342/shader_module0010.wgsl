struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(false, 56059i, Struct_1(true, vec2<u32>(99223u, 16455u), vec3<i32>(1i, -54565i, i32(-2147483648)), 0i), vec3<f32>(139f, -2776f, -1613f), -1i), Struct_4(true, -58131i, Struct_1(false, vec2<u32>(11591u, 0u), vec3<i32>(9988i, 2147483647i, -14850i), -18342i), vec3<f32>(820f, -352f, -383f), 2147483647i), Struct_4(false, -1i, Struct_1(true, vec2<u32>(0u, 11571u), vec3<i32>(2147483647i, 2147483647i, -30186i), -33264i), vec3<f32>(-685f, 316f, 1182f), 70853i), Struct_4(false, 31970i, Struct_1(false, vec2<u32>(60727u, 0u), vec3<i32>(-18576i, i32(-2147483648), 1i), i32(-2147483648)), vec3<f32>(-1000f, 1189f, -780f), 0i), Struct_4(false, -2628i, Struct_1(false, vec2<u32>(57592u, 1u), vec3<i32>(-1i, i32(-2147483648), 1i), 0i), vec3<f32>(-866f, -681f, 1351f), 7180i), Struct_4(false, 0i, Struct_1(false, vec2<u32>(48739u, 0u), vec3<i32>(18112i, -47538i, 2147483647i), 0i), vec3<f32>(-534f, 277f, 911f), i32(-2147483648)), Struct_4(false, 7920i, Struct_1(true, vec2<u32>(4294967295u, 53220u), vec3<i32>(6424i, -54038i, 9121i), -40722i), vec3<f32>(297f, 1000f, -502f), 1i), Struct_4(false, 1i, Struct_1(true, vec2<u32>(0u, 0u), vec3<i32>(1i, 3504i, 1i), i32(-2147483648)), vec3<f32>(-2088f, -1765f, -2180f), 0i), Struct_4(true, -11348i, Struct_1(false, vec2<u32>(1u, 60901u), vec3<i32>(36793i, 28491i, -29256i), -40124i), vec3<f32>(-204f, -1521f, -846f), 0i), Struct_4(false, -52516i, Struct_1(false, vec2<u32>(121360u, 4294967295u), vec3<i32>(-13974i, i32(-2147483648), 69704i), -1i), vec3<f32>(-541f, -309f, 1000f), -1i), Struct_4(true, i32(-2147483648), Struct_1(true, vec2<u32>(4294967295u, 0u), vec3<i32>(-13722i, i32(-2147483648), 1i), i32(-2147483648)), vec3<f32>(1352f, -1000f, 602f), 38392i), Struct_4(true, i32(-2147483648), Struct_1(false, vec2<u32>(0u, 6960u), vec3<i32>(2147483647i, -6735i, 0i), -10413i), vec3<f32>(1638f, -223f, -321f), i32(-2147483648)), Struct_4(false, 1i, Struct_1(true, vec2<u32>(60809u, 40564u), vec3<i32>(1i, 6073i, -23418i), 6117i), vec3<f32>(-439f, 540f, 248f), 1i), Struct_4(true, -1i, Struct_1(true, vec2<u32>(4294967295u, 1u), vec3<i32>(19460i, -1860i, 0i), 1i), vec3<f32>(402f, -1861f, 511f), -38560i), Struct_4(true, 1i, Struct_1(false, vec2<u32>(1757u, 60647u), vec3<i32>(2147483647i, 10040i, -1i), 1377i), vec3<f32>(829f, 1960f, -1000f), i32(-2147483648)), Struct_4(false, 11417i, Struct_1(false, vec2<u32>(81998u, 46326u), vec3<i32>(2147483647i, 2147483647i, -14922i), 1i), vec3<f32>(-418f, 307f, -334f), -34868i), Struct_4(true, i32(-2147483648), Struct_1(false, vec2<u32>(0u, 4294967295u), vec3<i32>(64740i, -16707i, -34447i), 19990i), vec3<f32>(-1000f, 1027f, 375f), 20016i), Struct_4(true, 40030i, Struct_1(true, vec2<u32>(4294967295u, 1u), vec3<i32>(i32(-2147483648), 1i, 2147483647i), 2147483647i), vec3<f32>(-281f, -1464f, 214f), 15482i), Struct_4(false, 39772i, Struct_1(false, vec2<u32>(40273u, 8168u), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 0i), vec3<f32>(-1850f, -254f, 2978f), 3274i), Struct_4(false, 28582i, Struct_1(false, vec2<u32>(86732u, 4294967295u), vec3<i32>(-1i, -1i, -23423i), 1730i), vec3<f32>(-1121f, 1033f, 1363f), -44135i), Struct_4(false, 6179i, Struct_1(false, vec2<u32>(4294967295u, 1u), vec3<i32>(1i, 74772i, 2147483647i), -1i), vec3<f32>(-792f, -214f, 248f), 5065i), Struct_4(true, 1i, Struct_1(true, vec2<u32>(0u, 4294967295u), vec3<i32>(1i, 9266i, -1i), -19871i), vec3<f32>(-171f, -1000f, 322f), 15637i), Struct_4(true, 51900i, Struct_1(false, vec2<u32>(37617u, 33607u), vec3<i32>(i32(-2147483648), 1i, -1i), -47063i), vec3<f32>(343f, 1050f, -574f), 1i), Struct_4(true, -21792i, Struct_1(false, vec2<u32>(4294967295u, 1u), vec3<i32>(11434i, i32(-2147483648), i32(-2147483648)), 14485i), vec3<f32>(648f, -820f, 1233f), 0i), Struct_4(false, 0i, Struct_1(false, vec2<u32>(1u, 12372u), vec3<i32>(i32(-2147483648), -4312i, 1i), 23269i), vec3<f32>(-364f, 1420f, 764f), 2147483647i), Struct_4(true, 11121i, Struct_1(false, vec2<u32>(4294967295u, 19470u), vec3<i32>(i32(-2147483648), -11769i, 0i), -23417i), vec3<f32>(-569f, 774f, -1000f), 1i), Struct_4(false, i32(-2147483648), Struct_1(true, vec2<u32>(0u, 1u), vec3<i32>(-26829i, 37241i, 2147483647i), 5936i), vec3<f32>(521f, -281f, -276f), -34828i), Struct_4(true, i32(-2147483648), Struct_1(false, vec2<u32>(23241u, 77171u), vec3<i32>(1i, i32(-2147483648), 2147483647i), 2147483647i), vec3<f32>(362f, -146f, -380f), i32(-2147483648)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<Struct_4, 28>();
    var var_0 = _wgslsmith_add_vec3_i32(abs(~firstTrailingBit(u_input.a.wxx)) | vec3<i32>(max(_wgslsmith_add_i32(8966i, arg_0), ~u_input.a.x), abs(-1i) | (u_input.a.x >> (4294967295u % 32u)), u_input.a.x), -u_input.a.zxz);
    global0 = array<Struct_4, 28>();
    let var_1 = Struct_3(Struct_2(true, Struct_1(!all(vec2<bool>(true, true)), vec2<u32>(1568u, 1u), u_input.a.yxy, -(~0i)), Struct_1(u_input.a.x != -var_0.x, vec2<u32>(1u, 1u), -u_input.a.xyw, 65717i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -789f))), _wgslsmith_add_u32(4294967295u, select(1u, abs(0u), true))), i32(-1i) * -arg_0, true, vec3<bool>(any(vec3<bool>(true, true, true)), !((var_0.x != 0i) && true), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), any(vec2<bool>(true, true))))));
    var_0 = firstTrailingBit(~var_1.a.c.c);
    return arg_0;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    var var_0 = Struct_4(true, countOneBits(func_3(~arg_0.c.d) >> (~1u % 32u)), arg_0.b, vec3<f32>(arg_0.d, -327f, 1399f), -_wgslsmith_mult_i32(-1i, (u_input.a.x | 2147483647i) >> (125164u % 32u)));
    var var_1 = var_0.c;
    return 4294967295u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_4, 28>();
    let var_0 = Struct_1(true, vec2<u32>(arg_1.b.x, _wgslsmith_mult_u32(abs(arg_0.x) >> (58372u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(58153u, arg_0.x, 3705u), vec3<u32>(arg_1.b.x, arg_1.b.x, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 30689u, 4294967295u), vec3<u32>(arg_1.b.x, arg_0.x, arg_0.x))))), -vec3<i32>(min(-27537i, abs(arg_1.c.x)), u_input.a.x, abs(_wgslsmith_add_i32(arg_1.d, -1i))), i32(-1i) * -(~(-2147483647i)));
    global0 = array<Struct_4, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-875f)) - _wgslsmith_div_f32(721f, 1344f)), _wgslsmith_f_op_f32(-775f * _wgslsmith_f_op_f32(f32(-1f) * -1043f)), _wgslsmith_f_op_f32(-109f * -1918f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-309f, 2386f)), -137f, _wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(-1000f + -1103f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(556f - -1625f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -481f))), _wgslsmith_f_op_f32(trunc(1f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2080f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-975f + -741f)))), 1826f, var_1.x);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_4, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))))));
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    var var_1 = func_4(vec2<u32>(~1u, abs(func_2(Struct_2(true, Struct_1(true, vec2<u32>(1u, 1834u), vec3<i32>(19376i, 45296i, u_input.a.x), -29240i), Struct_1(true, vec2<u32>(47708u, 4294967295u), u_input.a.yzz, u_input.a.x), var_0.x, 46999u)))) << (firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(24286u, 4294967295u), vec2<u32>(1u, 21769u), vec2<u32>(19787u, 11368u))) % vec2<u32>(32u)), Struct_1(false && !any(vec3<bool>(true, true, false)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x | u_input.a.x, -1i, 1i), vec3<i32>(countOneBits(-70978i), u_input.a.x, u_input.a.x), ~_wgslsmith_sub_vec3_i32(u_input.a.xyx, u_input.a.xyx)), ~min(u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.zww))), false);
    return func_4(firstLeadingBit(~(~(~vec2<u32>(var_1.b.x, 0u)))), func_4(var_1.b, Struct_1(var_1.a, firstTrailingBit(abs(var_1.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(56724i, 21807i, var_1.d), -var_1.c, vec3<i32>(-43307i, 1i, u_input.a.x)), -_wgslsmith_sub_i32(var_1.d, 1i)), true & ((var_1.b.x <= 3569u) || true)), !any(select(select(vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, false, true)), vec4<bool>(var_1.a, true, false, true), vec4<bool>(false, var_1.a, var_1.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<f32>(1016f, 355f, -246f, -1211f));
    global0 = array<Struct_4, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(493f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f * -1577f)), _wgslsmith_f_op_f32(round(-1137f))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.b.x), 28u)];
    var_2 = global0[_wgslsmith_index_u32(~var_0.b.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~5803u, _wgslsmith_dot_vec3_i32(vec3<i32>(-19450i, var_0.c.x, u_input.a.x), firstTrailingBit(~vec3<i32>(var_2.b, var_2.e, var_2.c.d)) & var_0.c));
}

