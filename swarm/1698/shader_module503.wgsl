struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<bool, 30>;

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec4<u32>(66869u, 1u, 25840u, 0u)), Struct_2(vec4<u32>(0u, 12203u, 1u, 19929u)), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 3714u)), Struct_2(vec4<u32>(1u, 17015u, 0u, 0u)), Struct_2(vec4<u32>(31245u, 10307u, 1u, 0u)), Struct_2(vec4<u32>(10590u, 1u, 3751u, 0u)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 51636u)), Struct_2(vec4<u32>(1u, 59462u, 1u, 22175u)), Struct_2(vec4<u32>(1u, 91742u, 4294967295u, 1u)), Struct_2(vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_2(vec4<u32>(4294967295u, 3852u, 0u, 4294967295u)), Struct_2(vec4<u32>(1u, 46842u, 1u, 1u)), Struct_2(vec4<u32>(99208u, 11223u, 0u, 5756u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = array<u32, 13>();
    return !select(select(!vec4<bool>(global1[_wgslsmith_index_u32(34937u, 30u)], true, global1[_wgslsmith_index_u32(0u, 30u)], true), !vec4<bool>(false, false, arg_0.c.a, true), arg_0.c.a), !vec4<bool>(any(vec2<bool>(arg_0.c.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 30u)])), any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(17577u, 30u)])), arg_0.c.a, 4294967295u >= u_input.c), 0i >= -firstTrailingBit(1i));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> i32 {
    let var_0 = select(select(vec3<bool>(arg_0.e, true, arg_3.e || arg_3.e), vec3<bool>(arg_0.e, arg_0.e, !any(vec2<bool>(arg_0.e, true))), arg_0.e), !select(!vec3<bool>(arg_0.e, true, arg_3.e), !vec3<bool>(false, arg_1.e, false), !all(vec2<bool>(arg_0.e, arg_0.e))), _wgslsmith_div_i32(0i, i32(-1i) * -1i) <= arg_2);
    var var_1 = func_3(Struct_3(Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.d.a.x, u_input.c, 4294967295u) >> (vec4<u32>(0u, 29506u, 50450u, arg_0.a.x) % vec4<u32>(32u)), ~vec4<u32>(29981u, 4294967295u, arg_1.a.x, global0[_wgslsmith_index_u32(27180u, 13u)]))), vec3<u32>(20396u, 1u, global0[_wgslsmith_index_u32(1u | arg_1.a.x, 13u)]) >> (arg_0.d.a.zyx % vec3<u32>(32u)), Struct_1(global1[_wgslsmith_index_u32(1u ^ (0u | arg_1.a.x), 30u)], arg_3.c, arg_3.a.x), u_input.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(693f)) + arg_1.b.x), 123f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 1108f)) + _wgslsmith_f_op_vec2_f32(select(arg_3.c, _wgslsmith_div_vec2_f32(arg_1.c, arg_0.b), !var_0.zy)))));
    let var_2 = ~vec2<u32>(37543u & min(firstLeadingBit(15109u), _wgslsmith_dot_vec4_u32(arg_3.d.a, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(14143u, 13u)], 1u))), firstTrailingBit(firstTrailingBit(20497u)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(arg_3.d.a, vec4<u32>(4294967295u, arg_3.d.a.x, u_input.c, 55520u) ^ reverseBits(arg_0.d.a))), vec3<u32>(max(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], var_2.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.a.x, 78424u, var_2.x), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], 13u)] >> (global0[_wgslsmith_index_u32(69672u, 13u)] % 32u))), abs(arg_0.a.x), firstLeadingBit(~var_2.x) & 62955u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(240f, arg_3.b.x)))) >= arg_0.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1635f, arg_0.c.x)), arg_0.c)), countOneBits(~4294967295u)), 37986i);
    global3 = array<Struct_2, 14>();
    return arg_2;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) * -400f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.x, 860f))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-1000f, 1305f, false)))))));
    var var_1 = select(vec2<bool>(any(select(vec4<bool>(true, arg_2.a, true, true), !vec4<bool>(true, arg_2.a, arg_2.a, false), global1[_wgslsmith_index_u32(12414u, 30u)])), u_input.c >= global0[_wgslsmith_index_u32(~0u, 13u)]), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 30u)] || arg_2.a), !select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], arg_2.a), vec2<bool>(arg_2.a, true)), false), select(func_3(Struct_3(global3[_wgslsmith_index_u32(min(85522u, 30735u), 14u)], vec3<u32>(u_input.c, u_input.c, 4294967295u), Struct_1(arg_2.a, arg_2.b, 0u), u_input.e), var_0.zz).wx, select(vec2<bool>(arg_2.a, global1[_wgslsmith_index_u32(15195u ^ arg_3, 30u)]), vec2<bool>(true, 4294967295u >= arg_2.c), false), !func_3(Struct_3(Struct_2(vec4<u32>(arg_3, arg_3, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 0u)), vec3<u32>(0u, arg_3, global0[_wgslsmith_index_u32(14301u, 13u)]), Struct_1(true, arg_2.b, 4294967295u), arg_1), vec2<f32>(169f, arg_2.b.x)).yx));
    let var_2 = func_3(Struct_3(global3[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, arg_2.c, 4294967295u)) & ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(arg_2.c, 13u)], arg_3), vec3<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(arg_2.c, 7u)]), ~1u, 0u)), Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, 838f) - vec2<f32>(arg_2.b.x, -850f)))), u_input.c << (countOneBits(u_input.c) % 32u)), -1i), vec2<f32>(_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x) * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(arg_2.b.x)))).zx;
    var var_3 = Struct_3(Struct_2(min(~abs(vec4<u32>(4294967295u, 73227u, 4294967295u, 4294967295u)), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(50293u, 13u)], global0[_wgslsmith_index_u32(16134u, 13u)]) >> (~vec4<u32>(19862u, 34420u, 1u, 18014u) % vec4<u32>(32u)))), vec3<u32>(70037u, ((global0[_wgslsmith_index_u32(arg_3, 13u)] | u_input.c) | _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(6938u, 13u)])) >> ((~arg_3 << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91566u, 13u)], 13u)], arg_3), vec3<u32>(29001u, 42117u, 1u)) % 32u)) % 32u), arg_3), arg_2, arg_1);
    global1 = array<bool, 30>();
    return Struct_2(vec4<u32>((global0[_wgslsmith_index_u32(arg_3, 13u)] << (arg_3 % 32u)) | 123560u, ~var_3.a.a.x, 0u, _wgslsmith_dot_vec2_u32(var_3.b.zx, _wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_3.a.a, vec4<u32>(4294967295u, 20273u, 4294967295u, var_3.c.c)), 7u)], vec2<u32>(16760u, arg_3)))));
}

fn func_1() -> vec2<f32> {
    global0 = array<u32, 13>();
    let var_0 = func_4(_wgslsmith_mult_vec4_i32(~firstLeadingBit(~vec4<i32>(u_input.a, -2177i, u_input.d.x, 1i)), abs(vec4<i32>(func_2(Struct_4(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], 7u)], vec2<f32>(-581f, 516f), vec2<f32>(-542f, 1000f), Struct_2(vec4<u32>(1u, 4294967295u, u_input.c, 984u)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 30u)]), Struct_4(vec2<u32>(4294967295u, 0u), vec2<f32>(311f, 1115f), vec2<f32>(-240f, 680f), global3[_wgslsmith_index_u32(7641u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 30u)]), -42734i, Struct_4(global2[_wgslsmith_index_u32(u_input.c, 7u)], vec2<f32>(1066f, -323f), vec2<f32>(-325f, -1354f), Struct_2(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 13u)], 1u, u_input.c)), false)), countOneBits(u_input.d.x), -1i << (0u % 32u), _wgslsmith_add_i32(u_input.a, u_input.b)))), 76640i, Struct_1(all(func_3(Struct_3(Struct_2(vec4<u32>(24988u, u_input.c, 4294967295u, 4294967295u)), vec3<u32>(1u, u_input.c, 41250u), Struct_1(global1[_wgslsmith_index_u32(77750u, 30u)], vec2<f32>(985f, 615f), u_input.c), u_input.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1203f, 1560f) * vec2<f32>(466f, -198f))).zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-950f)), _wgslsmith_f_op_f32(select(300f, -1000f, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-668f, 2183f))))), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 32691u), vec2<u32>(u_input.c, 17150u)))), _wgslsmith_clamp_u32(4294967295u, ~(19828u | (4294967295u & global0[_wgslsmith_index_u32(1u, 13u)])), 32997u));
    let var_1 = u_input.a;
    global0 = array<u32, 13>();
    let var_2 = Struct_3(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.zy | u_input.d.xz, abs(vec2<i32>(2147483647i, 6275i))), u_input.a, u_input.b, var_1), 0i, Struct_1(global1[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, 1378f) * vec2<f32>(-1000f, -2525f)))), _wgslsmith_add_u32(var_0.a.x, _wgslsmith_mult_u32(22159u, 29426u))), ~countOneBits(1u)), ~(~var_0.a.zxw), Struct_1(-1i > u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1366f)), 1068f)), ~(~0u >> (~global0[_wgslsmith_index_u32(47904u, 13u)] % 32u))), func_2(Struct_4(vec2<u32>(firstLeadingBit(var_0.a.x), ~1u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(478f, 1488f))), vec2<f32>(_wgslsmith_f_op_f32(round(798f)), _wgslsmith_f_op_f32(1258f * -489f)), global3[_wgslsmith_index_u32(~4294967295u, 14u)], false), Struct_4(vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], var_0.a.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 38430u), 13u)], 13u)]), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1669f, -1213f), vec2<f32>(-199f, -991f), false)))), vec2<f32>(_wgslsmith_div_f32(2559f, -1375f), -701f), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<u32>(36590u, u_input.c, 41851u, u_input.c), vec4<u32>(1u, global0[_wgslsmith_index_u32(var_0.a.x, 13u)], 42874u, 44284u))), false), var_1, Struct_4(var_0.a.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 203f), vec2<f32>(128f, -592f), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 13u)], 13u)], 30u)], true))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1796f, -449f)))), vec2<f32>(-587f, -517f), Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 53766u, 9911u, u_input.c)), (-2147483647i != var_1) | !global1[_wgslsmith_index_u32(5289u, 30u)])));
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c.b.x - var_2.c.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.b.x, -702f, false)) - _wgslsmith_f_op_f32(-363f + -2179f)))), var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(abs(12381u)), 13u)], 7u)], _wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, -151f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, 1744f)))) * vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-1531f)))))), func_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, 2458i), -vec4<i32>(u_input.a, u_input.a, u_input.d.x, u_input.d.x)), min(-12044i, u_input.e ^ u_input.a) | u_input.e, Struct_1(global1[_wgslsmith_index_u32(u_input.c, 30u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(220f))), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, -26617i, -13562i), vec4<i32>(2319i, u_input.d.x, u_input.b, -41506i)), _wgslsmith_clamp_i32(2147483647i, u_input.e, u_input.a), Struct_1(true, vec2<f32>(-1409f, -590f), 19701u), reverseBits(4294967295u)).a.x), u_input.c), true);
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(17256u, 14u)], _wgslsmith_mult_vec3_u32(var_0.d.a.yzz, ~vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13090u, 13u)], 13u)], 76753u), _wgslsmith_dot_vec4_u32(var_0.d.a, vec4<u32>(4294967295u, 1u, 1u, var_0.d.a.x)), ~1u)), Struct_1(select(!any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)])), var_0.e, global0[_wgslsmith_index_u32(firstLeadingBit(63818u), 13u)] != _wgslsmith_div_u32(4294967295u, u_input.c)), _wgslsmith_f_op_vec2_f32(-var_0.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 48215u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 13u)]), ~vec4<u32>(var_0.d.a.x, var_0.a.x, u_input.c, 1u))), _wgslsmith_add_i32(u_input.b, u_input.b));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -210f);
    var var_3 = func_2(var_0, var_0, 49690i, Struct_4(vec2<u32>(15089u, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(226f, var_1.c.b.x), vec2<f32>(195f, -993f), vec2<bool>(var_1.c.a, var_1.c.a))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.c.b)))), var_0.c, Struct_2(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(var_0.d.a.zyz, var_1.a.a.zyx), u_input.c & u_input.c, 1u)), global0[_wgslsmith_index_u32(7144u, 13u)] >= 76059u));
    let var_4 = abs(~select(16107u, 1u, !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 30u)] == false));
    let var_5 = var_0;
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_1.a.a)) & var_5.d.a, _wgslsmith_div_i32(3095i, _wgslsmith_div_i32(-42960i, countOneBits(~2147483647i))), ~min(min(14227u, _wgslsmith_sub_u32(u_input.c, u_input.c)), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u << (1u % 32u), 13u)], 13u)])), ~firstLeadingBit(0u));
}

