struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(18833u, 0u, 47362u, 1u, 14763u, 0u, 4294967295u, 0u, 59898u, 58017u, 1u, 4294967295u, 29712u, 21960u, 11821u, 0u, 1170u, 31202u, 12104u, 1u, 4294967295u, 2149u, 18666u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_2(!vec2<bool>(arg_0.a, any(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, arg_0.a), vec2<bool>(arg_1.c.a, arg_1.c.a)))), arg_1.c, vec2<bool>(true, !arg_1.c.a));
    var var_1 = arg_1.c;
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(floor(arg_1.a.zyx)), _wgslsmith_clamp_vec2_i32(var_1.c, -(vec2<i32>(-1i) * -vec2<i32>(2147483647i, arg_1.b.x)), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(-19016i), -26525i << (u_input.d % 32u)), vec2<i32>(_wgslsmith_mult_i32(0i, var_0.b.c.x), -2147483647i))));
    let var_3 = arg_1;
    var_1 = Struct_1(true | all(vec4<bool>(any(vec3<bool>(true, false, false)), false, u_input.c >= global0[_wgslsmith_index_u32(13152u, 24u)], arg_0.a)), var_0.b.b, var_3.b);
    return -_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b.xwy), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -u_input.b.wyy, select(u_input.b.wwz & vec3<i32>(var_0.b.c.x, 26893i, var_3.b.x), firstLeadingBit(vec3<i32>(arg_0.c.x, u_input.e, -1i)), vec3<bool>(arg_0.a, false, false)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0.c.x, 14847i), -u_input.b.xwx)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = func_3(arg_2.c, arg_3, -155f);
    let var_1 = select(reverseBits(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 22369u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 7019u, 34473u), vec3<u32>(36882u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3359u, 24u)], 24u)]))), ~(~vec3<u32>(4294967295u, 46767u, 35192u)))), abs(min(vec3<u32>(47885u, u_input.c, u_input.c), ~vec3<u32>(u_input.d, 0u, u_input.c))) << ((_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, 70517u, 2658u)), vec3<u32>(1u, 5082u, 1u)) ^ vec3<u32>(~global0[_wgslsmith_index_u32(u_input.d, 24u)], u_input.c | 1u, ~4294967295u)) % vec3<u32>(32u)), !vec3<bool>(true, all(vec3<bool>(false, true, true)), true));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.c.b.x, _wgslsmith_f_op_f32(arg_3.c.b.x + -831f)), -953f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(968f, 206f, false)), _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(step(1314f, arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 928f, arg_2.a.x, arg_2.a.x)), _wgslsmith_div_vec4_f32(arg_2.a, arg_3.a), !vec4<bool>(arg_0, arg_0, false, arg_3.c.a)))), arg_2.c.c, Struct_1(true, _wgslsmith_f_op_vec3_f32(-arg_3.a.zzw), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(39948i, 2147483647i)), abs(select(arg_3.c.c, vec2<i32>(u_input.e, arg_3.c.c.x), vec2<bool>(true, arg_3.c.a))), arg_3.c.c)));
    return Struct_3(Struct_2(select(vec2<bool>(true, true), vec2<bool>(arg_2.c.a, var_2.c.c.x <= var_2.b.x), vec2<bool>(!arg_2.c.a, true)), arg_2.c, select(select(select(vec2<bool>(arg_3.c.a, var_2.c.a), vec2<bool>(arg_0, true), vec2<bool>(true, false)), vec2<bool>(arg_0, false), select(vec2<bool>(false, false), vec2<bool>(true, arg_2.c.a), false)), select(!vec2<bool>(arg_0, arg_2.c.a), select(vec2<bool>(true, arg_3.c.a), vec2<bool>(var_2.c.a, false), vec2<bool>(arg_3.c.a, var_2.c.a)), true), select(!vec2<bool>(arg_0, arg_2.c.a), vec2<bool>(false, arg_0), !arg_3.c.a))), min(vec2<u32>(4294967295u, 24797u), var_1.yy ^ ((vec2<u32>(u_input.d, 0u) >> (var_1.xy % vec2<u32>(32u))) << (reverseBits(var_1.yz) % vec2<u32>(32u)))), arg_2.c.a, Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1223f, arg_2.a.x, 1283f)))), select(-arg_2.b, arg_3.c.c, select(select(vec2<bool>(arg_2.c.a, false), vec2<bool>(var_2.c.a, arg_3.c.a), arg_2.c.a), vec2<bool>(arg_3.c.a, arg_3.c.a), true))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = firstLeadingBit(countOneBits(4294967295u));
    let var_1 = Struct_1(!(!select(any(vec3<bool>(false, true, arg_0.a.a.x)), true && arg_0.c, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, arg_0.d.b.x, -1335f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1637f, arg_0.a.b.b.x)), !vec3<bool>(arg_0.c, arg_0.d.a, arg_0.d.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2273f, arg_0.a.b.b.x, 247f) * arg_0.d.b)))), _wgslsmith_mult_vec2_i32(-vec2<i32>(-16093i, arg_0.a.b.c.x), arg_0.d.c));
    global0 = array<u32, 24>();
    let var_2 = arg_0.d.c.x;
    global0 = array<u32, 24>();
    return _wgslsmith_div_i32(-2147483647i, func_3(Struct_1(all(vec3<bool>(true, var_1.a, false)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.d.b)), ~vec2<i32>(0i, arg_0.d.c.x)), Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.d.b.x, 1445f, 378f, -1002f))), _wgslsmith_sub_vec2_i32(vec2<i32>(-40818i, var_2), u_input.a), Struct_1(false, var_1.b, vec2<i32>(var_2, u_input.e))), _wgslsmith_f_op_f32(abs(-185f))).x) >> (~_wgslsmith_clamp_u32(arg_0.b.x, 16608u, u_input.c) % 32u);
}

fn func_5(arg_0: i32) -> Struct_4 {
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2576f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-307f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1215f + 378f) + _wgslsmith_f_op_f32(f32(-1f) * -293f)), -358f))), -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.b.yx) | _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, arg_0), vec2<i32>(u_input.a.x, -11681i)), u_input.b.xy), Struct_1(select(true, ~72578i <= _wgslsmith_mod_i32(0i, arg_0), func_2(true, u_input.b.yzw, Struct_4(vec4<f32>(-449f, -993f, 915f, 1319f), vec2<i32>(u_input.e, -40339i), Struct_1(false, vec3<f32>(2012f, -1000f, 123f), u_input.a)), Struct_4(vec4<f32>(711f, 1445f, -704f, -443f), u_input.b.yx, Struct_1(true, vec3<f32>(-246f, 447f, 1000f), vec2<i32>(31123i, -15283i)))).d.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, 1000f, -1433f) + vec3<f32>(-1720f, 472f, -1000f)))), func_3(Struct_1(false, vec3<f32>(1354f, 568f, 344f), firstTrailingBit(vec2<i32>(21367i, u_input.b.x))), Struct_4(vec4<f32>(-154f, 443f, -934f, 2231f), vec2<i32>(-33653i, -6365i), func_2(true, vec3<i32>(2147483647i, -15762i, -3924i), Struct_4(vec4<f32>(-505f, -438f, -1430f, -288f), vec2<i32>(-1051i, arg_0), Struct_1(false, vec3<f32>(169f, 765f, -402f), u_input.b.wz)), Struct_4(vec4<f32>(-1000f, -530f, -472f, -186f), vec2<i32>(arg_0, 1i), Struct_1(true, vec3<f32>(1000f, -1000f, -394f), vec2<i32>(arg_0, 2147483647i)))).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) + _wgslsmith_f_op_f32(-928f + 484f))).yz));
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)), !select(!vec4<bool>(false, arg_1.c.a, arg_1.c.a, true), select(vec4<bool>(arg_1.c.a, arg_1.c.a, true, arg_1.c.a), vec4<bool>(arg_1.c.a, false, true, true), vec4<bool>(false, arg_1.c.a, arg_1.c.a, arg_1.c.a)), !vec4<bool>(true, arg_1.c.a, true, arg_1.c.a)))), arg_1.b, arg_1.c);
    var var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(max(_wgslsmith_add_vec3_u32(vec3<u32>(14472u, global0[_wgslsmith_index_u32(38911u, 24u)], u_input.d) | vec3<u32>(global0[_wgslsmith_index_u32(12022u, 24u)], 0u, global0[_wgslsmith_index_u32(u_input.c, 24u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.c)), ~vec3<u32>(23074u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 24u)], 24u)], u_input.d))), vec3<u32>(u_input.d, ~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(19745u, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(28774u, 4294967295u), 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d >> (_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(77621u, 24u)]) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(17838u, global0[_wgslsmith_index_u32(7488u, 24u)], global0[_wgslsmith_index_u32(7876u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], u_input.d, global0[_wgslsmith_index_u32(9585u, 24u)], 70941u) << (vec4<u32>(0u, 15921u, global0[_wgslsmith_index_u32(58036u, 24u)], 18268u) % vec4<u32>(32u)))), 24u)]));
    let var_2 = (var_0.c.b.x != var_0.c.b.x) | select(var_0.c.a, true, false);
    var_0 = arg_1;
    let var_3 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d) | vec2<u32>(4294967295u, 0u), countOneBits(vec2<u32>(u_input.d, 1u))), countOneBits(~vec2<u32>(u_input.c, 32251u))), 24u)] > _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(min(0u << (global0[_wgslsmith_index_u32(u_input.d, 24u)] % 32u), ~34537u), 24u)], global0[_wgslsmith_index_u32(min(u_input.c, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 24u)], 24u)]), 24u)]), _wgslsmith_f_op_f32(trunc(arg_0)) < 258f);
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-432f)) + _wgslsmith_f_op_f32(abs(arg_1.a.x))) <= _wgslsmith_f_op_f32(1583f - _wgslsmith_f_op_f32(max(arg_0, 520f))), arg_1.c.a);
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 24>();
    let var_0 = u_input.b.x;
    var var_1 = u_input.e;
    var var_2 = _wgslsmith_f_op_f32(min(2031f, _wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1000f)) - -191f))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(652f)) + -145f) - _wgslsmith_f_op_f32(-955f + 1021f)));
    return func_6(_wgslsmith_f_op_f32(-1502f + _wgslsmith_f_op_f32(max(332f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-305f, 344f)) * _wgslsmith_f_op_f32(select(-1533f, -597f, true)))))), func_5(func_4(func_2(false, vec3<i32>(-13868i, var_0, var_0), Struct_4(vec4<f32>(794f, 536f, -1480f, 1060f), u_input.a, Struct_1(false, vec3<f32>(-1000f, -677f, 259f), u_input.a)), Struct_4(vec4<f32>(-267f, -1951f, 923f, -316f), vec2<i32>(var_0, 0i), Struct_1(false, vec3<f32>(142f, -224f, 781f), vec2<i32>(-9441i, 1i))))) << ((_wgslsmith_mod_u32(32179u, u_input.c) | 3074u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    let var_0 = u_input.b.yz;
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -770f));
    var var_2 = abs(_wgslsmith_div_i32(~(-1i), 2147483647i));
    let var_3 = -30905i;
    let var_4 = abs(select(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.d, global0[_wgslsmith_index_u32(43472u, 24u)], _wgslsmith_mult_u32(1u, u_input.d), 39490u), ~(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 24u)], 24u)], u_input.c, 0u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(23011u, 24u)], 1u, u_input.d))), firstLeadingBit(firstLeadingBit(vec4<u32>(1u, 41209u, 1u, global0[_wgslsmith_index_u32(u_input.d, 24u)]))) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45503u, 24u)], 24u)], 24u)]), ~1u, ~24543u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.d == 1u), any(vec4<bool>(false, false, false, false)))));
    let var_5 = select(vec3<bool>(true, true && (_wgslsmith_f_op_f32(max(-147f, var_1.x)) > _wgslsmith_f_op_f32(-var_1.x)), false), vec3<bool>(!(!(u_input.e != var_0.x)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), any(!func_1())), !vec3<bool>(func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -53790i, var_3, u_input.b.x), u_input.b)).c.a, select(false, func_6(var_1.x, Struct_4(vec4<f32>(var_1.x, var_1.x, -372f, -1191f), vec2<i32>(-52145i, var_3), Struct_1(false, vec3<f32>(1000f, var_1.x, var_1.x), vec2<i32>(-7425i, var_3)))).x, true), false));
    let var_6 = -18263i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_3);
}

