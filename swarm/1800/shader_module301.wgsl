struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-16518i, -36485i, 16529i, -1i, -33103i, 14205i, 12215i, 0i, -10966i, 15103i, 14733i, 2147483647i, 1i, -13029i, 10076i, -20804i, -14348i, 15989i, 1i, -22961i, 1i, 17685i, 2110i, 13345i, 38791i, -50436i, 0i, -1i, -62788i, 6117i);

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    global1 = 0i;
    let var_0 = Struct_5(Struct_1(false, 868f, max(_wgslsmith_mod_u32(select(0u, arg_1.b.x, true), ~arg_1.b.x), arg_1.b.x), select(vec3<bool>(true, select(true, true, false), true), !select(vec3<bool>(false, arg_1.a.c, arg_1.a.c), vec3<bool>(arg_2.b.a.c, true, false), arg_2.b.a.c), 0u >= (66786u << (arg_0 % 32u)))), arg_1.a.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, 899f) * vec2<f32>(1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(641f, 757f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1828f, -376f), vec2<f32>(-657f, 1125f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 233f), vec2<f32>(378f, 1376f))))), arg_2.c.x);
    global0 = array<i32, 30>();
    var var_1 = arg_2.c;
    global0 = array<i32, 30>();
    return abs(~(~((var_1.x | arg_1.b.x) ^ ~arg_0)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_2(~(~1u), ~vec2<u32>(~func_3(4294967295u, Struct_3(Struct_2(5141u, vec2<u32>(1u, 4294967295u), true, 13691u, 1u), vec2<u32>(6786u, 46801u), vec3<i32>(u_input.a, -2147483647i, u_input.a), vec4<i32>(12532i, u_input.a, global0[_wgslsmith_index_u32(1u, 30u)], 73113i), vec3<i32>(1i, u_input.a, -1408i)), Struct_4(vec4<i32>(2147483647i, 1i, -95089i, global0[_wgslsmith_index_u32(17606u, 30u)]), Struct_3(Struct_2(1u, vec2<u32>(202u, 133603u), arg_1.x, 1u, 1u), vec2<u32>(8911u, 4294967295u), vec3<i32>(global0[_wgslsmith_index_u32(1u, 30u)], u_input.a, 0i), vec4<i32>(-17615i, u_input.a, global0[_wgslsmith_index_u32(0u, 30u)], 1i), vec3<i32>(u_input.a, 0i, global0[_wgslsmith_index_u32(1u, 30u)])), vec3<u32>(6989u, 1175u, 1u), vec3<u32>(4401u, 42125u, 488u))), 0u << (1u % 32u)), select(!(!(1000f < arg_0.x)), _wgslsmith_div_u32(1u, 1u) != countOneBits(select(4294967295u, 25583u, true)), true), 1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1738u << (0u % 32u)), ~min(vec2<u32>(33551u, 49717u), vec2<u32>(0u, 0u))), ~(~(~0u))));
    var var_1 = Struct_1(all(!select(vec3<bool>(var_0.c, false, true), vec3<bool>(arg_1.x, false, false), vec3<bool>(true, arg_1.x, true))) && !any(vec4<bool>(arg_1.x, var_0.c, true, true)), arg_2, max(_wgslsmith_dot_vec2_u32(abs(var_0.b), ~(~vec2<u32>(var_0.b.x, 0u))), var_0.b.x), select(!vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, var_0.c | false), true));
    var var_2 = Struct_3(Struct_2(var_0.d, vec2<u32>(82059u, var_0.d), !any(select(vec4<bool>(true, var_0.c, var_0.c, var_1.d.x), vec4<bool>(var_0.c, var_0.c, arg_1.x, false), var_0.c)), 1u, 21650u), var_0.b, (_wgslsmith_clamp_vec3_i32(select(vec3<i32>(global0[_wgslsmith_index_u32(17767u, 30u)], u_input.a, u_input.a), vec3<i32>(0i, global0[_wgslsmith_index_u32(var_1.c, 30u)], u_input.a), var_1.d), countOneBits(vec3<i32>(-15040i, 21984i, u_input.a)), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.b.x, 30u)], -31919i)) << (firstTrailingBit(vec3<u32>(1u, var_1.c, var_1.c)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.b, var_0.b) ^ 1u, _wgslsmith_sub_u32(85068u, 74904u), ~(~4294967295u)) % vec3<u32>(32u)), _wgslsmith_sub_vec4_i32(abs(abs(vec4<i32>(41369i, u_input.a, u_input.a, u_input.a) | vec4<i32>(30624i, 40545i, 58088i, 39287i))), select(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.a), global0[_wgslsmith_index_u32(var_1.c, 30u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-34544i, 1i, u_input.a, -2147483647i), vec4<i32>(u_input.a, 1i, global0[_wgslsmith_index_u32(var_0.a, 30u)], global0[_wgslsmith_index_u32(var_1.c, 30u)]))), -vec4<i32>(57639i, u_input.a, 2147483647i, 36681i) << (abs(vec4<u32>(28583u, 4294967295u, 19534u, var_1.c)) % vec4<u32>(32u)), !(!var_1.d.x))), _wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, 0i, 25023i) >> ((firstLeadingBit(vec3<u32>(0u, var_1.c, var_0.a)) & max(vec3<u32>(var_1.c, var_0.b.x, var_1.c), vec3<u32>(117959u, var_1.c, 0u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(0i, 2147483647i, -45418i)), -vec3<i32>(global0[_wgslsmith_index_u32(var_1.c, 30u)], 0i, u_input.a)), _wgslsmith_div_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(var_0.d, 30u)], u_input.a, global0[_wgslsmith_index_u32(1u, 30u)]), abs(vec3<i32>(2147483647i, 0i, u_input.a))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_1.c, 30u)], global0[_wgslsmith_index_u32(var_0.a, 30u)], 1i), vec3<i32>(23745i, -7438i, 26222i)))));
    return _wgslsmith_clamp_u32(17454u, _wgslsmith_mult_u32(var_2.b.x, var_2.a.a) ^ _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_1.c, var_0.a, var_1.c, 3525u), vec4<u32>(var_0.b.x, var_1.c, var_0.a, 4294967295u)), firstTrailingBit(vec4<u32>(var_0.b.x, var_1.c, 26303u, var_0.a)) << (~vec4<u32>(638u, 12975u, var_1.c, 1u) % vec4<u32>(32u))), ~var_0.a);
}

fn func_1(arg_0: bool) -> u32 {
    global1 = -8999i;
    var var_0 = 1i;
    global1 = (u_input.a | _wgslsmith_div_i32(~(9645i ^ global0[_wgslsmith_index_u32(122518u, 30u)]), u_input.a)) >> (~(~(~59611u << (0u % 32u))) % 32u);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 66553u << (1u % 32u), 27127u), 0u & func_2(vec4<f32>(-1514f, 657f, -1000f, -350f), vec2<bool>(arg_0, false), -1023f)), ~(~39600u)), 30u)];
    var var_2 = vec2<i32>(~global0[_wgslsmith_index_u32(~44112u, 30u)], _wgslsmith_sub_i32(firstTrailingBit(u_input.a), ~21596i));
    return ~(~min(_wgslsmith_sub_u32(~1605u, countOneBits(38579u)), func_3(_wgslsmith_mult_u32(49792u, 23588u), Struct_3(Struct_2(13430u, vec2<u32>(68453u, 8589u), true, 45861u, 1u), vec2<u32>(0u, 15378u), vec3<i32>(-47i, global0[_wgslsmith_index_u32(0u, 30u)], -2147483647i), vec4<i32>(var_2.x, u_input.a, -4875i, 7597i), vec3<i32>(15917i, 0i, -6962i)), Struct_4(vec4<i32>(1i, -27473i, var_2.x, u_input.a), Struct_3(Struct_2(7800u, vec2<u32>(7364u, 0u), true, 4294967295u, 0u), vec2<u32>(0u, 1u), vec3<i32>(19387i, -41592i, global0[_wgslsmith_index_u32(0u, 30u)]), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1780u, 30u)], var_2.x, 0i), vec3<i32>(global0[_wgslsmith_index_u32(27737u, 30u)], 1i, u_input.a)), vec3<u32>(1681u, 0u, 32390u), vec3<u32>(1u, 35692u, 70241u)))));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    return Struct_4(-(~vec4<i32>(-2147483647i << (arg_0.b.x % 32u), 37097i ^ u_input.a, 2147483647i, abs(15570i))), Struct_3(Struct_2(arg_0.d, ~vec2<u32>(arg_0.d, 4294967295u), countOneBits(arg_0.e) < 4294967295u, arg_0.e, _wgslsmith_mult_u32(13786u, ~arg_0.d)), vec2<u32>(1u, 4294967295u), -vec3<i32>(-20003i, 25220i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i) & _wgslsmith_mult_vec4_i32(vec4<i32>(537i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a)), vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), global0[_wgslsmith_index_u32(arg_0.d, 30u)] << (77570u % 32u), ~u_input.a, ~u_input.a)), abs(vec3<i32>(24187i, 7207i, 2147483647i) >> (vec3<u32>(0u, arg_0.a, 0u) % vec3<u32>(32u))) | max(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(16867u, 30u)], global0[_wgslsmith_index_u32(8418u, 30u)])), ~vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(22149u, 30u)]))), vec3<u32>(arg_0.e, max(_wgslsmith_add_u32(44837u, arg_0.e), reverseBits(139654u)), (38814u & _wgslsmith_sub_u32(arg_0.a, arg_0.a)) ^ 0u), (~_wgslsmith_div_vec3_u32(vec3<u32>(12587u, arg_0.a, arg_0.b.x), vec3<u32>(arg_0.a, 33621u, 1555u)) >> (vec3<u32>(arg_0.e, func_1(arg_0.c), ~arg_0.b.x) % vec3<u32>(32u))) | vec3<u32>(49746u, func_1(any(vec4<bool>(arg_0.c, false, arg_0.c, true))), _wgslsmith_sub_u32(~arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b.x, arg_0.d), vec3<u32>(296u, arg_0.b.x, arg_0.e)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> Struct_5 {
    let var_0 = Struct_5(Struct_1(all(select(vec2<bool>(true, arg_0.b.a.c), vec2<bool>(true, false), select(vec2<bool>(arg_1.b.a.c, arg_0.b.a.c), vec2<bool>(arg_1.b.a.c, arg_1.b.a.c), arg_0.b.a.c))), _wgslsmith_f_op_f32(select(1261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)), arg_0.b.b.x, vec3<bool>(true, true, all(select(vec4<bool>(false, true, false, arg_1.b.a.c), vec4<bool>(arg_1.b.a.c, arg_0.b.a.c, arg_1.b.a.c, arg_1.b.a.c), vec4<bool>(arg_1.b.a.c, arg_1.b.a.c, arg_1.b.a.c, true))))), arg_0.b.a.c, _wgslsmith_div_vec2_f32(vec2<f32>(-2691f, _wgslsmith_f_op_f32(max(-2015f, -395f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1228f * -763f), _wgslsmith_f_op_f32(f32(-1f) * -327f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-353f, 175f)))))), reverseBits(arg_1.c.x));
    global0 = array<i32, 30>();
    global1 = -18525i;
    let var_1 = arg_1.b;
    global0 = array<i32, 30>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_2(_wgslsmith_div_u32(func_1(true), ~41522u), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(5955u, 27074u), vec2<u32>(984u, 1398u), vec2<u32>(1u, 23726u))), all(vec2<bool>(false, false)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(2716u, 1u), vec2<u32>(51547u, 0u))), 1u)), Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(34903i, 1i, u_input.a, 4078i), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 30u)], -1i, 70793i, -1i), -vec4<i32>(global0[_wgslsmith_index_u32(49585u, 30u)], u_input.a, 20961i, global0[_wgslsmith_index_u32(122785u, 30u)]))), func_4(func_4(Struct_2(4294967295u, vec2<u32>(5276u, 13784u), true, 1u, 4294967295u)).b.a).b, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 31511u, 4294967295u), vec3<u32>(0u, 49594u, 4294967295u), vec3<u32>(48611u, 32121u, 4294967295u)) | firstLeadingBit(vec3<u32>(1u, 1u, 1u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 31630u, 57590u)), ~vec3<u32>(0u, 1u, 1u)))));
    var var_1 = abs(u_input.a);
    var var_2 = vec3<i32>(-global0[_wgslsmith_index_u32(var_0.d, 30u)], global0[_wgslsmith_index_u32(abs(func_4(func_4(func_4(Struct_2(var_0.a.c, vec2<u32>(var_0.d, var_0.d), var_0.b, var_0.d, 4377u)).b.a).b.a).d.x), 30u)], _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-(vec3<i32>(global0[_wgslsmith_index_u32(53927u, 30u)], global0[_wgslsmith_index_u32(var_0.d, 30u)], 2147483647i) & vec3<i32>(0i, 0i, -78436i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(18297u, 30u)], global0[_wgslsmith_index_u32(var_0.d, 30u)]), vec3<i32>(0i, -131i, 2147483647i))), u_input.a));
    var var_3 = func_5(Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -2645i, _wgslsmith_clamp_i32(2147483647i, 0i, 2147483647i), var_2.x, _wgslsmith_sub_i32(10498i, global0[_wgslsmith_index_u32(var_0.a.c, 30u)])), firstLeadingBit(max(vec4<i32>(var_2.x, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.d, 30u)], 32339i, u_input.a)))), func_4(Struct_2(var_0.d, vec2<u32>(var_0.a.c, 4294967295u), true, abs(4294967295u), var_0.d)).b, ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(18767u, 4294967295u, var_0.d), vec3<u32>(var_0.a.c, 0u, 1398u)), ~vec3<u32>(var_0.d, 21793u, 16729u), !vec3<bool>(true, var_0.a.a, var_0.a.d.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.a.c, 0u), 45265u, ~1u), ~select(vec3<u32>(1u, 1u, var_0.d), vec3<u32>(var_0.a.c, var_0.a.c, 4294967295u), var_0.b))), Struct_4(max(-vec4<i32>(26100i, u_input.a, -1i, u_input.a), _wgslsmith_mod_vec4_i32(min(vec4<i32>(-3548i, 35980i, var_2.x, global0[_wgslsmith_index_u32(var_0.a.c, 30u)]), vec4<i32>(var_2.x, 35764i, u_input.a, 24714i)), firstTrailingBit(vec4<i32>(var_2.x, -35321i, 0i, -1i)))), func_4(Struct_2(var_0.a.c, ~vec2<u32>(0u, var_0.a.c), true, _wgslsmith_mod_u32(var_0.d, 61677u), func_1(false))).b, ~(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.d, var_0.d), vec3<u32>(var_0.d, var_0.d, var_0.d)) >> (abs(vec3<u32>(var_0.a.c, var_0.d, var_0.a.c)) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(16777u), ~28925u << ((var_0.a.c | 1u) % 32u), firstTrailingBit(4294967295u)))).a;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(min(951f, _wgslsmith_f_op_f32(var_3.b - var_3.b))))))), var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32((~vec3<u32>(37157u, var_3.c, 1u) >> (~vec3<u32>(39843u, var_3.c, 3057u) % vec3<u32>(32u))) & reverseBits(firstTrailingBit(vec3<u32>(var_3.c, var_0.d, 83309u))), ~vec3<u32>(var_3.c, ~20392u, 4294967295u)), 41945u, vec4<u32>(var_3.c, 41588u, 4294967295u, var_3.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(-877f + 392f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) + var_3.b), var_0.a.b)));
}

