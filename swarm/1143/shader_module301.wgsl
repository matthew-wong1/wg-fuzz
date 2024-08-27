struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global1 = arg_1;
    var var_0 = arg_3.e.yz;
    global1 = arg_1;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(abs(arg_3.b.x), ~4294967295u), _wgslsmith_div_vec2_u32(u_input.c.yz << (arg_3.b.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_3.b.x), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 6018u), arg_3.b.zy)))));
    let var_2 = firstLeadingBit(vec4<i32>(firstLeadingBit(-60629i), _wgslsmith_div_i32(2147483647i << (var_1.x % 32u), -1i) & 0i, 2147483647i, abs(-firstLeadingBit(0i))));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = all(!vec3<bool>(any(vec2<bool>(global1.a, false)), func_3(global1.a, Struct_1(false), Struct_2(Struct_1(global1.a), arg_3.xxy, vec3<f32>(arg_2.x, -649f, arg_2.x), 113736u, vec4<bool>(global0.a, global0.a, false, global0.a)), Struct_2(Struct_1(global1.a), vec3<u32>(41884u, u_input.b, arg_3.x), vec3<f32>(-661f, 1284f, -2455f), arg_3.x, vec4<bool>(false, global0.a, global1.a, true))), _wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(abs(-393f))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), !func_3(global1.a, Struct_1(false), Struct_2(Struct_1(global0.a), vec3<u32>(0u, 15394u, 4294967295u), vec3<f32>(-616f, 1000f, arg_2.x), 76776u, vec4<bool>(false, true, false, global1.a)), Struct_2(Struct_1(global1.a), vec3<u32>(87774u, u_input.b, u_input.b), vec3<f32>(arg_2.x, arg_2.x, -272f), arg_3.x, vec4<bool>(global0.a, global1.a, global0.a, true))))))) == _wgslsmith_f_op_f32(arg_2.x - arg_2.x);
    var var_1 = firstLeadingBit(arg_3.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(256f, -759f, -1160f), vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))));
    var_0 = true;
    return Struct_2(Struct_1(global0.a), vec3<u32>(~abs(~30415u), 1u, 93645u), _wgslsmith_f_op_vec3_f32(abs(var_2)), 58423u, vec4<bool>(true, all(!(!vec4<bool>(false, global1.a, false, global1.a))), !global1.a, false));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    global1 = arg_1.a;
    let var_0 = func_2(arg_0 ^ firstLeadingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, 9287i), arg_0)), firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(-20270i, arg_0.x, -32491i), ~vec3<i32>(-41625i, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(select(arg_1.c.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.zx) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(432f, arg_1.c.x)))) + arg_1.c.xy), !global1.a)), ~arg_2).a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x), 102f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)))));
    let var_2 = func_2(abs(arg_0), select(vec3<i32>(i32(-1i) * -20304i, min(20682i, 0i), reverseBits(-1i)), vec3<i32>(reverseBits(arg_0.x), arg_0.x, ~arg_0.x), true) << (_wgslsmith_add_vec3_u32(firstTrailingBit(reverseBits(arg_1.b)), select(_wgslsmith_mult_vec3_u32(u_input.c, arg_2.zyx), ~arg_1.b, global1.a | false)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(arg_1.c.xy)), _wgslsmith_add_vec4_u32(max(vec4<u32>(reverseBits(arg_1.b.x), firstTrailingBit(u_input.b), ~arg_2.x, 19904u), ~(~arg_2)), countOneBits(arg_2 >> (arg_2 % vec4<u32>(32u))) << (vec4<u32>(u_input.b, ~10424u, u_input.a.x, u_input.c.x) % vec4<u32>(32u)))).a;
    var var_3 = select(vec3<i32>(max(arg_0.x | arg_0.x, -1i) | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~vec4<i32>(-1i, 13470i, arg_0.x, arg_0.x)), abs(-1i), ~(-_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x))), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -46276i), vec4<i32>(1i, arg_0.x, 1i, arg_0.x) >> (vec4<u32>(25925u, 0u, u_input.a.x, 0u) % vec4<u32>(32u))), _wgslsmith_mod_i32(arg_0.x << (arg_2.x % 32u), arg_0.x), arg_0.x)), !vec3<bool>(false, global1.a, false));
    return Struct_1(false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> bool {
    global1 = func_4(vec2<i32>(abs(~0i), ~(-arg_3)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(select(u_input.c, arg_1.b, true), select(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(24632u, 4294967295u, arg_2.x), global0.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, u_input.c.x, arg_1.b.x, 4294967295u), countOneBits(arg_2))) % vec2<u32>(32u)), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, abs(-1i)), vec2<i32>(-1i) * -vec2<i32>(0i, arg_3)), _wgslsmith_clamp_vec3_i32((vec3<i32>(-2147483647i, arg_3, arg_3) >> (arg_1.b % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, 1i, arg_3), vec3<i32>(-32309i, arg_3, -19026i)), vec3<i32>(-arg_3, -2147483647i, 2147483647i), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_3, arg_3, arg_3), -vec3<i32>(arg_3, -2320i, arg_3))), _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, _wgslsmith_f_op_f32(-arg_1.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x))), _wgslsmith_sub_vec4_u32(arg_2, vec4<u32>(40791u, arg_2.x, u_input.a.x, 71065u)) & _wgslsmith_mult_vec4_u32(max(arg_2, arg_2), _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(u_input.a.x, arg_2.x, arg_1.b.x, 1u)))), arg_2);
    global1 = func_4(vec2<i32>(~(-2147483647i), arg_3) | (-vec2<i32>(2147483647i, 0i) | ~countOneBits(vec2<i32>(1i, arg_3))), arg_1, arg_2);
    global0 = func_4(-vec2<i32>(arg_3, _wgslsmith_div_i32(2147483647i, arg_3)) << (firstLeadingBit(reverseBits(u_input.c.yz)) % vec2<u32>(32u)), arg_1, ~arg_2);
    var var_0 = true;
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -2147483647i), -arg_3), max(-28686i, 13831i), 3624i, -33555i ^ arg_3));
    return false;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = 0u;
    let var_2 = Struct_2(Struct_1(true), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1239f - 1000f), 1118f, _wgslsmith_f_op_f32(abs(625f))))), ~(1u ^ ~var_1), vec4<bool>(!all(vec4<bool>(false, global0.a, true, true)), func_5(func_4(vec2<i32>(-15892i, arg_2), func_2(vec2<i32>(arg_2, arg_2), vec3<i32>(arg_2, arg_2, arg_2), vec2<f32>(arg_1.x, arg_1.x), vec4<u32>(var_1, u_input.a.x, 7512u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, u_input.b, var_1, u_input.c.x))), Struct_2(Struct_1(global1.a), vec3<u32>(u_input.b, 1u, u_input.a.x), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), select(u_input.a.x, var_1, true), func_2(vec2<i32>(0i, 1577i), vec3<i32>(arg_2, 0i, 1618i), arg_1.zz, vec4<u32>(u_input.c.x, 10495u, 37738u, 37420u)).e), ~firstTrailingBit(vec4<u32>(1u, u_input.b, var_1, u_input.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -1i), vec2<i32>(-88149i, -26142i)) & max(2147483647i, 29418i)), false, u_input.b <= 11959u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.x))));
    let var_3 = !(!func_2((vec2<i32>(arg_2, arg_2) >> (vec2<u32>(76265u, var_2.d) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, 0i), vec2<i32>(-36557i, 1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2, -89437i, 1i), vec3<i32>(0i, arg_2, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, -2147483647i, arg_2), vec3<i32>(0i, arg_2, arg_2))), func_2(select(vec2<i32>(-6802i, 2147483647i), vec2<i32>(8407i, arg_2), var_2.e.ww), min(vec3<i32>(arg_2, 0i, arg_2), vec3<i32>(arg_2, -2147483647i, 16470i)), _wgslsmith_f_op_vec2_f32(-var_2.c.zx), ~vec4<u32>(u_input.a.x, 0u, var_1, var_2.d)).c.yy, vec4<u32>(~1u, _wgslsmith_mult_u32(var_1, var_2.d), 4294967295u, _wgslsmith_clamp_u32(0u, 1u, u_input.b))).e);
    return func_4(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_2, arg_2 & 13148i, ~arg_2), arg_2), vec2<i32>(-1i) * -vec2<i32>(-1i, arg_2)), Struct_2(var_2.a, _wgslsmith_div_vec3_u32(~countOneBits(var_2.b), ~(u_input.c | u_input.a)), var_2.c, 4294967295u, !var_3), firstTrailingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(588u, var_2.d, u_input.a.x, var_2.b.x), vec4<u32>(39696u, 4294967295u, 18726u, u_input.b)), vec4<u32>(var_2.b.x, 7589u, 4294967295u, u_input.b), any(var_3)) << (~reverseBits(vec4<u32>(u_input.b, 111331u, u_input.b, 0u)) % vec4<u32>(32u))));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = Struct_1(global0.a);
    global0 = arg_0;
    let var_0 = func_2(vec2<i32>(~27434i, _wgslsmith_sub_i32(-38228i, -(~0i))), ~_wgslsmith_clamp_vec3_i32(~countOneBits(vec3<i32>(1i, -14782i, 0i)), vec3<i32>(-16484i, _wgslsmith_sub_i32(-45195i, 1702i), countOneBits(-29611i)), vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i), abs(29955i), _wgslsmith_clamp_i32(10328i, -1171i, 26595i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, -1000f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(1176f - 1284f)))), vec4<u32>(func_2(-(vec2<i32>(-14451i, 2147483647i) >> (u_input.a.zy % vec2<u32>(32u))), countOneBits(vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), (vec4<u32>(4294967295u, 0u, 4294967295u, 17907u) | vec4<u32>(1730u, u_input.c.x, u_input.b, u_input.c.x)) & (vec4<u32>(u_input.a.x, 24305u, 1u, u_input.b) >> (vec4<u32>(25553u, u_input.b, 35521u, u_input.c.x) % vec4<u32>(32u)))).d, _wgslsmith_add_u32(~(46788u & u_input.c.x), max(1u, 0u)), _wgslsmith_add_u32(firstLeadingBit(u_input.a.x ^ 0u), u_input.a.x), u_input.a.x));
    global0 = Struct_1(arg_0.a);
    global0 = arg_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false);
    let var_1 = Struct_2(Struct_1(all(!(!vec2<bool>(global1.a, false)))), u_input.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1136f, _wgslsmith_f_op_f32(-1110f + _wgslsmith_f_op_f32(449f * 430f)), _wgslsmith_f_op_f32(-441f + -1656f)))), _wgslsmith_mult_u32(14913u, 0u), vec4<bool>(global1.a, true, !(true || all(vec2<bool>(global1.a, true))), true));
    let var_2 = func_6(func_1(!select(vec3<bool>(var_1.e.x, var_0.a, false), var_1.e.zzz, !global0.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1114f + var_1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), -576f, true)), 140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x))), ~(~(-2147483647i))), false);
    var_0 = func_6(var_1.a, false);
    let var_3 = _wgslsmith_sub_u32(func_2(min(~(~vec2<i32>(1i, 11536i)), max(vec2<i32>(18005i, 5172i) << (vec2<u32>(var_1.b.x, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(2147483647i, 1i))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-22556i, 20967i, 18487i), vec3<i32>(-1423i, 1i, 13300i), vec3<i32>(-1i, -29737i, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1965f, var_1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), var_0.a))), vec4<u32>(var_1.b.x, var_1.b.x, _wgslsmith_add_u32(var_1.d, u_input.a.x), u_input.a.x)).d, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -386f), var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, 511f)), _wgslsmith_div_f32(var_1.c.x, var_1.c.x), _wgslsmith_f_op_f32(1000f - 1367f), _wgslsmith_f_op_f32(-var_1.c.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, 310f, var_1.c.x) - vec4<f32>(2013f, 198f, 3114f, 1359f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, var_1.c.x, var_1.c.x, 1222f)))))), reverseBits(-40535i));
}

