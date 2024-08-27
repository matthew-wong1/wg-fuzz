struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(u_input.d);
    let var_1 = (_wgslsmith_f_op_f32(arg_1.x + arg_1.x) >= _wgslsmith_f_op_f32(2585f - arg_1.x)) & all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, true, false)), true)));
    let var_2 = Struct_1(~u_input.d);
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.zy, _wgslsmith_sub_vec2_u32(arg_0.yz, arg_0.zw), ~(~vec2<u32>(1u, 1452u))), arg_0.xw));
    var var_4 = 1598f;
    return all(select(select(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(true, false), !vec2<bool>(false, var_1), !vec2<bool>(var_1, var_1)), vec2<bool>(false | var_1, var_1)), !vec2<bool>(false | var_1, any(vec2<bool>(false, false))), u_input.e.x != min(_wgslsmith_add_i32(u_input.c, 22807i), ~24934i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = Struct_1(~u_input.a);
    global0 = arg_1;
    var var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec2_i32(u_input.e.wx >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1.a), vec2<u32>(arg_1.a, arg_1.a) ^ vec2<u32>(144033u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(min(i32(-1i) * -12544i, _wgslsmith_add_i32(-24097i, 5666i)), abs(u_input.e.x))) >> (global0.a % 32u);
    let var_1 = !arg_0.x;
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = func_4(select(vec2<bool>(true, !select(true, true, false)), !vec2<bool>(true, all(vec2<bool>(false, false))), func_3(vec4<u32>(59597u, 29801u, _wgslsmith_div_u32(13749u, arg_0.a), countOneBits(global0.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(-153f + 249f)))), arg_2);
    let var_1 = -1232f;
    var var_2 = -409f;
    var var_3 = arg_2;
    var var_4 = vec4<u32>(arg_2.a, abs(55410u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.a, arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(~14027u, 0u, arg_2.a, arg_2.a), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7203u, 1u, var_3.a, arg_2.a), vec4<u32>(u_input.d, global0.a, 69302u, global0.a)), vec4<u32>(var_3.a, 0u, 0u, global0.a))), 4294967295u), 4294967295u);
    return select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, func_4(vec2<bool>(false, false), Struct_1(4294967295u)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), select(vec4<bool>(any(vec3<bool>(false, true, true)), u_input.b < -18729i, true, true), vec4<bool>(select(true, true, false), all(vec3<bool>(false, false, false)), true, var_1 > var_1), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), 98191u != (min(~12843u, _wgslsmith_div_u32(4294967295u, 3994u)) >> (_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(1u), global0.a ^ 35611u) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    return Struct_1(abs(arg_2.a));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = func_5(func_5(Struct_1(select(_wgslsmith_add_u32(4294967295u, u_input.d), global0.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)), func_5(Struct_1(4294967295u), 1247f, func_5(Struct_1(1u), _wgslsmith_f_op_f32(867f * -1066f), arg_3, vec4<bool>(true, true, true, true)), !func_2(Struct_1(0u), 47280u, arg_0)), !func_2(func_5(arg_1, -1122f, Struct_1(3492u), vec4<bool>(true, true, true, false)), arg_3.a ^ 1u, arg_0)), 350f, func_5(func_5(Struct_1(firstTrailingBit(arg_2.a)), _wgslsmith_f_op_f32(floor(1000f)), Struct_1(u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1513f)), func_5(func_5(arg_0, _wgslsmith_f_op_f32(508f - -871f), arg_2, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), func_5(arg_1, -1833f, arg_1, vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), !(!vec4<bool>(arg_1.a < arg_3.a, any(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, true)), true)));
    let var_0 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.d), vec2<u32>(arg_2.a, 7462u))), select(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(1u, arg_0.a), vec2<u32>(12622u, 1u)), ~abs(vec2<u32>(arg_3.a, u_input.a))), ~(~vec2<u32>(u_input.d, 0u)) << (countOneBits(max(vec2<u32>(u_input.a, arg_1.a), vec2<u32>(u_input.d, arg_3.a))) % vec2<u32>(32u)), true), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(35356u, 1u), 57556u), _wgslsmith_mod_u32(abs(1u), ~1537u)), vec2<u32>(arg_0.a | arg_1.a, arg_1.a)));
    let var_1 = u_input.b;
    global0 = func_5(Struct_1(1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-635f * 784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) - _wgslsmith_f_op_f32(f32(-1f) * -1428f))))), func_5(Struct_1(arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-334f * 584f), 444f)) * -192f), arg_0, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true), func_2(Struct_1(1u), abs(78507u), func_5(Struct_1(4294967295u), 1105f, arg_2, vec4<bool>(false, false, false, true))), vec4<bool>(true, var_1 <= u_input.b, true, true))), !vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), any(vec4<bool>(true, true, true, true)), arg_0.a != 0u, true));
    var var_2 = func_5(func_5(arg_0, 1000f, arg_3, select(vec4<bool>(func_4(vec2<bool>(true, false), arg_0), all(vec3<bool>(true, false, false)), true, func_3(vec4<u32>(global0.a, arg_1.a, 1u, arg_1.a), vec2<f32>(-1743f, -133f))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), all(vec3<bool>(true, true, false)) & func_3(vec4<u32>(arg_3.a, arg_3.a, arg_2.a, 4294967295u), vec2<f32>(-1000f, -152f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1429f + -434f))) - _wgslsmith_f_op_f32(-1000f - -1078f)), 261f), func_5(func_5(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1489f, -385f)))), arg_3, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(529f))) * _wgslsmith_f_op_f32(-720f - -632f)), arg_3, !vec4<bool>(select(true, true, true), true, false, true)), select(vec4<bool>(func_4(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_5(Struct_1(arg_1.a), -1000f, Struct_1(arg_0.a), vec4<bool>(false, true, true, true))), true, true, true), !vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_6(arg_2, func_6(func_5(func_6(arg_2, arg_2, func_6(arg_0, arg_2, Struct_1(4294967295u), Struct_1(0u)), arg_0), -1000f, arg_0, select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), func_5(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(801f + 732f) * -498f), func_5(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -107f), Struct_1(0u), vec4<bool>(true, false, true, true)), func_2(Struct_1(arg_0.a), ~arg_1.x, arg_0)), Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, global0.a), u_input.d)), func_5(func_6(Struct_1(arg_1.x), Struct_1(56104u), func_6(Struct_1(arg_1.x), arg_0, Struct_1(26433u), Struct_1(43190u)), arg_0), _wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(1374f - 1515f)), Struct_1(_wgslsmith_add_u32(52109u, arg_0.a)), func_2(func_5(arg_0, 1000f, arg_2, vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, 4294967295u), vec3<u32>(arg_0.a, 0u, 4294967295u)), arg_2))), Struct_1(~4294967295u), arg_2);
    let var_1 = arg_0;
    var var_2 = arg_2;
    var_2 = arg_0;
    global0 = func_6(func_6(Struct_1(~global0.a), var_1, func_6(func_5(Struct_1(global0.a), 1466f, func_5(Struct_1(global0.a), -1162f, var_0, vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false)), var_0, func_6(func_6(arg_2, arg_2, arg_0, Struct_1(7871u)), Struct_1(arg_2.a), arg_2, var_1), func_6(func_5(Struct_1(18234u), -394f, Struct_1(arg_0.a), vec4<bool>(false, true, true, false)), var_1, func_5(Struct_1(1u), 292f, arg_2, vec4<bool>(true, false, true, true)), func_5(Struct_1(30615u), -1277f, var_1, vec4<bool>(false, true, true, true)))), arg_2), Struct_1(firstTrailingBit(59884u)), Struct_1(1u), Struct_1(3174u));
    return func_6(var_0, Struct_1(var_0.a), func_5(Struct_1(84550u), _wgslsmith_f_op_f32(-1f), Struct_1(var_1.a), vec4<bool>(true, false, true, func_3(~vec4<u32>(11307u, 4294967295u, 4294967295u, arg_2.a), vec2<f32>(806f, -690f)))), var_1);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = global0.a;
    let var_1 = false | (arg_1 | (!(!arg_1) || true));
    global0 = Struct_1(~global0.a);
    global0 = Struct_1(firstTrailingBit(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(59368u, 84292u, 0u, global0.a), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d)))));
    let var_2 = ~arg_0.x ^ _wgslsmith_add_i32(-(~arg_0.x), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(1i, _wgslsmith_mult_i32(arg_0.x, arg_0.x), _wgslsmith_clamp_i32(arg_0.x, u_input.c, arg_0.x), firstTrailingBit(-7552i))));
    return func_7(func_6(Struct_1(~(16323u ^ global0.a)), Struct_1(firstLeadingBit(1u)), func_5(Struct_1(~0u), _wgslsmith_f_op_f32(round(-656f)), Struct_1(1u), select(vec4<bool>(true, arg_1, var_1, true), !vec4<bool>(true, var_1, false, arg_1), func_2(Struct_1(38140u), u_input.a, Struct_1(u_input.d)))), Struct_1(global0.a)), vec2<u32>(global0.a, ~global0.a), func_6(func_5(Struct_1(57040u), 2127f, Struct_1(_wgslsmith_clamp_u32(0u, global0.a, u_input.a)), select(!vec4<bool>(true, arg_1, var_1, true), func_2(Struct_1(global0.a), global0.a, Struct_1(u_input.a)), var_1)), Struct_1(~global0.a), Struct_1(reverseBits(abs(global0.a))), func_6(Struct_1(abs(u_input.a)), func_5(Struct_1(21429u), _wgslsmith_f_op_f32(483f - -239f), Struct_1(global0.a), !vec4<bool>(var_1, var_1, false, false)), func_6(Struct_1(global0.a), Struct_1(58136u), func_6(Struct_1(1u), Struct_1(u_input.d), Struct_1(3175u), Struct_1(global0.a)), func_6(Struct_1(1u), Struct_1(0u), Struct_1(u_input.d), Struct_1(0u))), func_6(func_6(Struct_1(20507u), Struct_1(global0.a), Struct_1(80197u), Struct_1(global0.a)), Struct_1(0u), Struct_1(121932u), func_5(Struct_1(22475u), -1167f, Struct_1(u_input.a), vec4<bool>(arg_1, arg_1, var_1, arg_1))))));
}

fn func_8(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = arg_1;
    global0 = func_5(arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1044f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * -760f), true)), func_7(func_5(func_7(arg_1, min(vec2<u32>(13548u, arg_1.a), vec2<u32>(u_input.a, 4294967295u)), Struct_1(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-498f, -1209f))), Struct_1(4294967295u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)), abs(min(vec2<u32>(1u, 55224u), vec2<u32>(global0.a, 42699u) >> (vec2<u32>(arg_1.a, arg_1.a) % vec2<u32>(32u)))), arg_1), !vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(1663f, arg_2)) >= _wgslsmith_f_op_f32(sign(arg_2)), true, false));
    global0 = Struct_1(reverseBits(func_7(arg_1, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4458u, arg_1.a) << (vec2<u32>(global0.a, global0.a) % vec2<u32>(32u))), arg_1).a));
    let var_0 = func_5(Struct_1(u_input.d), arg_2, func_6(arg_1, arg_1, arg_1, arg_1), func_2(arg_1, global0.a, func_6(arg_1, func_7(func_5(Struct_1(u_input.d), -484f, Struct_1(4294967295u), vec4<bool>(true, true, true, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 1u), vec2<u32>(u_input.d, 1u)), Struct_1(4294967295u)), arg_1, arg_1)));
    var var_1 = Struct_1(_wgslsmith_div_u32(11939u, arg_1.a));
    return Struct_1(select(~(~firstLeadingBit(85792u)), ~_wgslsmith_mod_u32(0u, arg_1.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(~_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-1i, u_input.c), u_input.e.x), func_1(-(-vec2<i32>(u_input.b, -43656i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(34060u, 1u), vec2<u32>(global0.a, u_input.d)) % vec2<u32>(32u))), true), _wgslsmith_f_op_f32(exp2(1f)));
    let var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(25825u, u_input.d, 0u) ^ (vec3<u32>(65934u, 0u, 12400u) >> (vec3<u32>(17105u, global0.a, global0.a) % vec3<u32>(32u))), abs(~vec3<u32>(12832u, 4294967295u, 0u)), true), _wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, 83293u, _wgslsmith_add_u32(27646u, global0.a)), ~(vec3<u32>(u_input.d, 18682u, u_input.a) | vec3<u32>(global0.a, u_input.d, 104836u)))));
    var var_1 = Struct_1(var_0.x);
    let var_2 = global0.a;
    let var_3 = Struct_1(62633u);
    var_1 = func_8(max(firstTrailingBit(_wgslsmith_sub_i32(u_input.c, u_input.e.x & -2147483647i)), u_input.e.x), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-752f, -535f)) + _wgslsmith_f_op_f32(f32(-1f) * -881f)))));
    global0 = var_3;
    let var_4 = -2147483647i < firstTrailingBit(10716i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(step(745f, 1177f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(f32(-1f) * -751f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f + 573f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(662f, 673f, 1151f), vec3<f32>(-2221f, 440f, 891f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, 1507f, 451f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1361f, -916f, 681f)))))), u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0, var_0 | var_0) ^ max(select(var_0, vec3<u32>(63447u, 1u, var_0.x), true), vec3<u32>(0u, 94475u, var_1.a)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.yx, var_0.xx), 1u)), select(_wgslsmith_sub_vec3_i32(u_input.e.wzz, vec3<i32>(2147483647i, _wgslsmith_add_i32(u_input.e.x, -1i), _wgslsmith_clamp_i32(u_input.c, 4693i, u_input.b))), vec3<i32>(9483i, -abs(0i), abs(firstTrailingBit(u_input.b))), !vec3<bool>(true, true, !var_4)));
}

