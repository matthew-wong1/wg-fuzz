struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(4294967295u, vec3<u32>(0u, 8409u, 48799u), 1u, vec3<f32>(1000f, -680f, -1000f), vec2<bool>(false, false)), Struct_1(0u, vec3<u32>(0u, 4294967295u, 2995u), 0u, vec3<f32>(1000f, 408f, 557f), vec2<bool>(true, false)), Struct_1(20084u, vec3<u32>(4537u, 0u, 0u), 1u, vec3<f32>(737f, 1225f, 193f), vec2<bool>(true, false)), Struct_1(43895u, vec3<u32>(4294967295u, 1u, 21884u), 12304u, vec3<f32>(-984f, 288f, -1000f), vec2<bool>(false, false)), Struct_1(4294967295u, vec3<u32>(57058u, 5359u, 0u), 73326u, vec3<f32>(704f, 551f, 305f), vec2<bool>(false, true)), Struct_1(16822u, vec3<u32>(1u, 0u, 0u), 20927u, vec3<f32>(-534f, 1114f, -1027f), vec2<bool>(false, true)), Struct_1(13975u, vec3<u32>(4294967295u, 24977u, 0u), 1u, vec3<f32>(-235f, 425f, 260f), vec2<bool>(false, true)), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 0u), 82356u, vec3<f32>(-1332f, 909f, -1002f), vec2<bool>(true, true)), Struct_1(2763u, vec3<u32>(0u, 4294967295u, 4806u), 1u, vec3<f32>(-284f, 168f, 1966f), vec2<bool>(true, true)), Struct_1(4294967295u, vec3<u32>(0u, 78204u, 4294967295u), 50183u, vec3<f32>(1055f, 1452f, -123f), vec2<bool>(false, true)), Struct_1(9230u, vec3<u32>(1292u, 61802u, 0u), 105u, vec3<f32>(-746f, -1194f, -1804f), vec2<bool>(false, true)), Struct_1(1u, vec3<u32>(1u, 57125u, 4294967295u), 1u, vec3<f32>(1000f, 1086f, 899f), vec2<bool>(false, true)), Struct_1(36395u, vec3<u32>(17409u, 1u, 1455u), 4294967295u, vec3<f32>(-1273f, -1223f, -174f), vec2<bool>(false, false)), Struct_1(4294967295u, vec3<u32>(40865u, 53012u, 4294967295u), 0u, vec3<f32>(1039f, 571f, -916f), vec2<bool>(true, false)), Struct_1(1u, vec3<u32>(90160u, 14339u, 21444u), 54490u, vec3<f32>(333f, 1348f, 948f), vec2<bool>(false, true)), Struct_1(1u, vec3<u32>(4294967295u, 1u, 18002u), 64088u, vec3<f32>(1151f, -1014f, 2647f), vec2<bool>(false, true)), Struct_1(53998u, vec3<u32>(0u, 108622u, 16777u), 4599u, vec3<f32>(-289f, 288f, 604f), vec2<bool>(true, true)), Struct_1(8210u, vec3<u32>(67290u, 1u, 43939u), 14409u, vec3<f32>(-1000f, -1249f, 625f), vec2<bool>(true, true)), Struct_1(4294967295u, vec3<u32>(1u, 0u, 5896u), 0u, vec3<f32>(235f, -456f, -231f), vec2<bool>(true, true)), Struct_1(29435u, vec3<u32>(28326u, 86935u, 4294967295u), 12641u, vec3<f32>(372f, -1055f, 412f), vec2<bool>(false, false)), Struct_1(15232u, vec3<u32>(2900u, 1u, 0u), 30526u, vec3<f32>(-769f, 683f, -489f), vec2<bool>(true, true)), Struct_1(0u, vec3<u32>(4294967295u, 0u, 1u), 4294967295u, vec3<f32>(1273f, -1087f, -2228f), vec2<bool>(false, true)));

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<u32>(1u, 18283u, 4294967295u), 4294967295u, vec3<f32>(286f, 1010f, 224f), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = (~global2.c == arg_1.x) || true;
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a >> (1u % 32u), 22u)];
    var var_2 = ~global2.b.xx;
    global2 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_0.a), vec2<u32>(var_2.x, var_1.a))), ~arg_1.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 12121u, 0u), vec4<u32>(15528u, 0u, 38965u, 1u))), ~1u)), vec3<u32>(~(var_2.x & 0u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.b.x, arg_0.a, var_2.x, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c, 59059u, 19576u, u_input.b.x), select(vec4<u32>(arg_0.b.x, arg_0.a, global2.c, 4294967295u), vec4<u32>(u_input.b.x, 0u, var_2.x, var_2.x), var_1.e.x))), _wgslsmith_dot_vec2_u32(var_1.b.xz << (firstLeadingBit(global2.b.yx) % vec2<u32>(32u)), arg_0.b.zy)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2.d.x)), 1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-296f, global2.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1043f)))), vec2<bool>(!global2.e.x, true));
    var var_3 = _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(min(vec3<i32>(arg_2, arg_2, u_input.c), vec3<i32>(2147483647i, -2147483647i, arg_3)), vec3<i32>(arg_2, u_input.c, -2147483647i))), reverseBits(-firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -9147i)))) ^ vec3<i32>(arg_2, -abs(i32(-1i) * -34620i), _wgslsmith_add_i32(19236i, ~u_input.a));
    return ~(~reverseBits(~_wgslsmith_div_u32(57063u, u_input.b.x)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, _wgslsmith_add_u32(countOneBits(2211u), ~u_input.b.x)), abs(~select(vec4<u32>(global2.a, 1u, 4294967295u, 49896u), ~vec4<u32>(1u, 1u, global2.b.x, global2.a), global2.e.x)));
    var var_1 = vec4<u32>(global2.b.x, ~reverseBits(u_input.b.x), 41923u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, u_input.b.x) << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), ~u_input.b.yz), 1u), ~65154u));
    var var_2 = global2.e;
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(global2.c, 22u)], _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_0.x, 30347u)), vec2<u32>(u_input.b.x << (global2.a % 32u), countOneBits(u_input.b.x))) << (vec2<u32>(_wgslsmith_div_u32(reverseBits(4770u), _wgslsmith_add_u32(8073u, 1u)), func_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.c, 21399u), 22u)], _wgslsmith_mult_vec2_u32(vec2<u32>(10390u, 39362u), vec2<u32>(31969u, var_0.x)), -1i, -9613i | u_input.a)) % vec2<u32>(32u)), vec3<u32>(countOneBits(var_0.x), 0u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f)), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_1.x, var_1.x)), ~vec3<u32>(var_1.x, var_0.x, 1u)), var_0.wyz, var_1.x, vec3<f32>(global2.d.x, global2.d.x, _wgslsmith_f_op_f32(ceil(-1420f))), global2.e), ~(~(u_input.a << (global2.c % 32u))), 25807u));
    let var_4 = _wgslsmith_mod_vec2_i32(select(firstLeadingBit(~vec2<i32>(u_input.c, u_input.c)), vec2<i32>(min(var_3.e.b, 65029i), var_3.e.b), false) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a), reverseBits(vec2<i32>(var_3.e.b, -2147483647i)), -vec2<i32>(32833i, var_3.e.b)), vec2<i32>(reverseBits(_wgslsmith_sub_i32(abs(38426i), -1i >> (global2.a % 32u))), ~u_input.c));
    return ~(4294967295u << (global2.c % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = ~arg_1.c;
    global0 = arg_2;
    let var_0 = Struct_1(~arg_2, arg_1.b, 2146u, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.d.x)), -618f, _wgslsmith_f_op_f32(-arg_1.d.x)), select(vec2<bool>(true, any(vec2<bool>(arg_1.e.x, global2.e.x))), vec2<bool>(true, global2.e.x), vec2<bool>(!global2.e.x, any(select(vec3<bool>(true, global2.e.x, arg_1.e.x), vec3<bool>(arg_1.e.x, global2.e.x, true), vec3<bool>(arg_1.e.x, false, arg_1.e.x))))));
    global2 = global1[_wgslsmith_index_u32(~0u, 22u)];
    var var_1 = _wgslsmith_dot_vec4_i32(abs(-(vec4<i32>(u_input.a, 35818i, u_input.a, u_input.c) & vec4<i32>(-1i, u_input.c, -57852i, 42176i)) & vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7379i, -1i, 63873i, -10029i), vec4<i32>(u_input.c, 2722i, u_input.c, -13998i)), 30340i, ~u_input.c)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, 1i, 29872i)), vec4<i32>(u_input.c, 0i, 40453i, -2147483647i) >> (vec4<u32>(7631u, global2.b.x, global2.a, u_input.b.x) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-17094i, u_input.c, u_input.c, 27470i), vec4<i32>(u_input.c, u_input.a, -24771i, u_input.a)), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & vec4<i32>(u_input.a, -23601i, -1i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -19495i, 39767i, u_input.c), vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c))), min(-countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 10791i)), vec4<i32>(abs(-2147483647i), -1138i, -24066i, u_input.c))));
    return Struct_1(36241u, var_0.b, max(20614u, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a, var_0.a), ~arg_1.c))), global2.d, select(arg_1.e, arg_1.e, !select(select(global2.e, var_0.e, var_0.e.x), !var_0.e, select(arg_1.e, var_0.e, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_0 = vec3<u32>(~(~arg_0) >> (0u % 32u), arg_2.a, arg_0);
    var var_1 = Struct_2(func_4(6178u, Struct_1(arg_1.c.x, _wgslsmith_sub_vec3_u32(vec3<u32>(74608u, 1u, 4294967295u), arg_2.b) << (~vec3<u32>(55285u, 10457u, global2.b.x) % vec3<u32>(32u)), func_2(), _wgslsmith_f_op_vec3_f32(arg_1.e.a.d - arg_2.d), vec2<bool>(any(vec3<bool>(true, false, true)), false)), 1u), _wgslsmith_div_i32(-(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.c, 19584i)) ^ 49004i), 0i), reverseBits(~(~_wgslsmith_div_u32(1u, 1u))));
    let var_2 = var_1.a;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(abs(max(func_1(39831u, Struct_3(global1[_wgslsmith_index_u32(global2.a, 22u)], global2.b.zy, u_input.b, 731f, Struct_2(Struct_1(u_input.b.x, global2.b, global2.a, vec3<f32>(1672f, -1056f, 1014f), global2.e), -23982i, 0u)), Struct_1(global2.b.x, u_input.b, 0u, vec3<f32>(-1574f, global2.d.x, global2.d.x), global2.e), global2.b.yx), 4294967295u >> (global2.a % 32u))), _wgslsmith_sub_u32(global2.c, _wgslsmith_mult_u32(global2.c, global2.b.x) | ~4294967295u), true), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 1u, 4294967295u), firstTrailingBit(1u)), vec3<u32>(~0u, countOneBits(19395u), global2.b.x), vec3<u32>(6184u, global2.b.x, 51850u) >> (u_input.b % vec3<u32>(32u)))), func_4(_wgslsmith_mod_u32(max(firstLeadingBit(22059u), u_input.b.x), global2.b.x), Struct_1(global2.c, global2.b, 4294967295u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(global2.d)), _wgslsmith_f_op_vec3_f32(ceil(global2.d)))), vec2<bool>(5641u < global2.b.x, true || global2.e.x)), ~firstLeadingBit(1u)).a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.d, global2.d)) * _wgslsmith_f_op_vec3_f32(-global2.d)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1751f, -682f, global2.d.x), vec3<f32>(772f, 1433f, -668f), vec3<bool>(true, global2.e.x, global2.e.x))))))), select(select(func_4(30740u, global1[_wgslsmith_index_u32(global2.a, 22u)], reverseBits(46705u)).e, vec2<bool>(true, global2.e.x | true), vec2<bool>(false, true)), vec2<bool>(global2.e.x | all(vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x)), (global2.b.x ^ global2.c) > ~u_input.b.x), vec2<bool>(false, _wgslsmith_div_f32(global2.d.x, 620f) > _wgslsmith_div_f32(global2.d.x, 184f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(global2.d - vec3<f32>(global2.d.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f))));
    global2 = global1[_wgslsmith_index_u32(abs(26202u), 22u)];
    let var_2 = Struct_2(Struct_1(1u, global2.b ^ ~_wgslsmith_mult_vec3_u32(var_0.b, vec3<u32>(global2.a, global2.b.x, global2.a)), global2.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1000f, global2.d.x)) - vec3<f32>(-1582f, var_1.x, 366f)))), !var_0.e), ~_wgslsmith_mod_i32(u_input.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, u_input.a))), u_input.b.x);
    var var_3 = -vec4<i32>(~u_input.c, var_2.b, -var_2.b, ~var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_add_i32(var_3.x, -2096i), var_3.x, _wgslsmith_add_i32(var_3.x, 1i), (-var_3.x & _wgslsmith_sub_i32(u_input.a, var_3.x)) << (4294967295u % 32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(func_1(53825u, Struct_3(global1[_wgslsmith_index_u32(26390u, 22u)], vec2<u32>(3900u, u_input.b.x), var_2.a.b, 838f, Struct_2(var_2.a, var_3.x, 47500u)), global1[_wgslsmith_index_u32(49000u, 22u)], vec2<u32>(0u, 4294967295u)), 1u, 0u, select(global2.a, var_2.a.c, true)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.c, var_0.a, 32754u, 30951u), vec4<u32>(global2.c, var_2.a.c, 1u, var_2.c))), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))));
}

