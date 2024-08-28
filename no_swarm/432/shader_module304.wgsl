struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = global0.x && all(select(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x & false), vec4<bool>(true, global0.x || false, true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.x)), -1392f)) * -862f);
    var_0 = true;
    return abs(u_input.d) | max(u_input.c, -_wgslsmith_mod_i32(1i, u_input.b << (1u % 32u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.b.a;
    var var_1 = Struct_2(arg_2.a, arg_2.b, arg_2.c);
    let var_2 = func_2(~abs(select(abs(vec4<u32>(0u, 6557u, 1u, arg_2.a.b.x)), ~var_1.a.b, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.e.x, 1000f, arg_2.a.e.x) * vec3<f32>(-216f, -708f, -1826f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, -1372f, -2004f)), global0.x))))));
    var_1 = arg_2;
    var var_3 = Struct_2(arg_2.b, Struct_1(vec3<u32>(1u, ~var_0.x, abs(0u)) ^ vec3<u32>(firstTrailingBit(var_1.a.b.x), _wgslsmith_sub_u32(53159u, arg_2.b.b.x), ~arg_0), _wgslsmith_add_vec4_u32(arg_2.b.b ^ vec4<u32>(var_1.a.b.x, arg_2.a.d, 0u, arg_2.b.a.x), var_1.b.b) & ~(~vec4<u32>(41213u, 30174u, 6656u, var_1.a.b.x)), arg_2.c.wz, var_1.a.b.x, _wgslsmith_f_op_vec2_f32(var_1.a.e - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.e - vec2<f32>(-810f, arg_2.b.e.x))))), var_1.c);
    return 75021u <= max(firstTrailingBit(~(~var_3.a.b.x)), _wgslsmith_add_u32(var_3.b.a.x, ~abs(var_1.a.b.x)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = vec4<bool>(any(vec2<bool>(-67009i < min(u_input.d, -20154i), true)), true, true, func_3(u_input.e.x, vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, 0i), vec3<i32>(-5067i, u_input.b, -40513i)), abs(-2147483647i)), _wgslsmith_mult_i32(2147483647i, func_2(vec4<u32>(12367u, 4294967295u, u_input.e.x, 51934u), vec3<f32>(-792f, -547f, -1555f))), u_input.c, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-6559i, -22616i), vec2<i32>(u_input.d, 3379i)), vec2<i32>(-81579i, -6150i))), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.e.x, 30692u) ^ vec3<u32>(u_input.a, 105919u, u_input.e.x), vec4<u32>(u_input.a, 3309u, u_input.e.x, 4294967295u), vec2<i32>(0i, u_input.c) | vec2<i32>(u_input.b, 1i), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1386f) * vec2<f32>(-624f, 1794f))), Struct_1(vec3<u32>(4294967295u, u_input.e.x, u_input.a), firstTrailingBit(vec4<u32>(u_input.a, 33033u, 80110u, u_input.e.x)), vec2<i32>(u_input.b, 3366i) | vec2<i32>(u_input.c, u_input.c), 13929u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, 924f))), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.c, -74682i))))));
    var var_0 = true;
    var_0 = any(!global0.zwx);
    let var_1 = Struct_3(Struct_1(firstLeadingBit(firstLeadingBit(~vec3<u32>(16452u, u_input.e.x, u_input.a))), min(vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), min(u_input.a, 40212u), _wgslsmith_div_u32(u_input.e.x, 995u), u_input.e.x & 39436u), ~vec4<u32>(u_input.e.x, 49174u, 4294967295u, u_input.e.x)), -select(vec2<i32>(-46993i, u_input.b), select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-1i, u_input.b), global0.x), global0.xx), countOneBits(~72252u), vec2<f32>(1307f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-225f)))))), true);
    var_0 = false;
    return var_1.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global0 = !select(vec4<bool>(global0.x, global0.x, all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), true);
    return Struct_2(Struct_1(~(~max(arg_0, arg_0)), (vec4<u32>(65138u, u_input.a, arg_2, 4294967295u) << (func_1(true).b % vec4<u32>(32u))) << (abs(vec4<u32>(arg_2, arg_2, u_input.e.x, 4294967295u) ^ arg_1.b.b) % vec4<u32>(32u)), countOneBits(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.c.x, -2147483647i), vec2<i32>(u_input.b, u_input.d)))), max(reverseBits(_wgslsmith_add_u32(37818u, 2086u)), ~_wgslsmith_mult_u32(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(min(arg_1.a.e, vec2<f32>(304f, -846f)))), Struct_1(arg_1.b.b.wwy, arg_1.a.b, arg_1.a.c, abs(countOneBits(4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.a.e - arg_1.b.e))))), _wgslsmith_mod_vec4_i32(-min(min(arg_1.c, arg_1.c), select(vec4<i32>(40236i, arg_1.c.x, u_input.c, -43299i), arg_1.c, vec4<bool>(true, global0.x, global0.x, global0.x))), arg_1.c));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    let var_0 = ~(-(arg_1.c | ~arg_1.c));
    let var_1 = arg_2;
    let var_2 = var_1.a;
    var var_3 = var_1.a.e.x;
    global0 = vec4<bool>(all(select(vec2<bool>(false, !var_1.b), vec2<bool>(any(vec3<bool>(global0.x, true, arg_2.b)), !global0.x), arg_3.wy)), true, true, !all(vec2<bool>(true, true)));
    return arg_1.b.e.x;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    global0 = select(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(arg_2, global0.x, false, false), vec4<bool>(arg_2, arg_2, false, global0.x)))), !(!vec4<bool>(true, all(vec2<bool>(true, false)), arg_2, any(vec4<bool>(false, false, arg_2, global0.x)))), arg_2);
    let var_0 = func_4(_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 40626u, u_input.a) >> (vec3<u32>(6805u, 28173u, u_input.e.x) % vec3<u32>(32u))), func_4(vec3<u32>(u_input.a, 27140u, 487u), Struct_2(Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), vec4<u32>(59421u, 0u, 46063u, 82722u), vec2<i32>(-44587i, 39164i), 1u, arg_1), Struct_1(vec3<u32>(153031u, 24167u, 21813u), vec4<u32>(4294967295u, 10712u, u_input.a, 48491u), vec2<i32>(u_input.b, u_input.b), 0u, vec2<f32>(-1169f, 592f)), vec4<i32>(17460i, u_input.b, -2147483647i, 1i)), 0u).a.a >> (vec3<u32>(4294967295u, u_input.e.x, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(~u_input.e.x, 1u, firstLeadingBit(max(u_input.a, u_input.e.x))) % vec3<u32>(32u)), Struct_2(func_4(abs(reverseBits(vec3<u32>(17390u, u_input.a, 27814u))), Struct_2(func_1(arg_2), func_4(vec3<u32>(u_input.a, 17837u, u_input.e.x), Struct_2(Struct_1(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), vec4<u32>(u_input.e.x, u_input.a, u_input.e.x, 8843u), vec2<i32>(u_input.c, -12184i), u_input.e.x, vec2<f32>(1206f, 582f)), Struct_1(vec3<u32>(40318u, 1u, 0u), vec4<u32>(1u, u_input.e.x, 11396u, u_input.a), vec2<i32>(u_input.c, u_input.c), u_input.e.x, vec2<f32>(arg_1.x, arg_1.x)), vec4<i32>(u_input.d, -1i, -16377i, u_input.b)), u_input.a).b, countOneBits(vec4<i32>(2147483647i, 0i, u_input.c, u_input.d))), min(abs(4294967295u), ~u_input.e.x)).b, func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.e.x, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.e.x, 10760u), vec3<u32>(1u, 0u, 4294967295u))), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 18193u, u_input.a), vec3<u32>(u_input.a, 7235u, 10814u)), func_4(vec3<u32>(u_input.a, 39772u, u_input.e.x), Struct_2(Struct_1(vec3<u32>(1u, u_input.e.x, u_input.a), vec4<u32>(u_input.a, 1u, u_input.e.x, 101820u), vec2<i32>(-1i, u_input.d), 4294967295u, arg_1), Struct_1(vec3<u32>(20970u, u_input.e.x, 13753u), vec4<u32>(u_input.a, u_input.a, u_input.a, 111088u), vec2<i32>(26363i, 4224i), u_input.a, vec2<f32>(-1567f, arg_0)), vec4<i32>(u_input.d, u_input.c, -59290i, u_input.b)), 1u), ~1u), 1u << (_wgslsmith_clamp_u32(u_input.a, 20054u, u_input.e.x) % 32u)).b, _wgslsmith_sub_vec4_i32(func_4(vec3<u32>(0u, 4294967295u, 1u), Struct_2(Struct_1(vec3<u32>(u_input.e.x, u_input.e.x, 22806u), vec4<u32>(u_input.a, 31669u, u_input.e.x, u_input.a), vec2<i32>(-40i, 0i), 4294967295u, arg_1), Struct_1(vec3<u32>(0u, u_input.a, 89045u), vec4<u32>(u_input.e.x, 11906u, 19637u, 32432u), vec2<i32>(22860i, u_input.b), 4294967295u, arg_1), vec4<i32>(-10449i, 2147483647i, u_input.c, 61459i)), u_input.e.x).c, -vec4<i32>(2147483647i, u_input.d, u_input.c, u_input.b)) >> (((vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) & vec4<u32>(3930u, u_input.a, u_input.e.x, u_input.a)) & abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u))) % vec4<u32>(32u))), 1u);
    var var_1 = Struct_3(Struct_1(~vec3<u32>(4294967295u, 4294967295u, u_input.a), vec4<u32>(_wgslsmith_mod_u32(var_0.b.b.x, var_0.b.b.x), _wgslsmith_add_u32(2249u, u_input.e.x), var_0.b.a.x, var_0.a.b.x), -var_0.c.xz, func_4(vec3<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.a), var_0.a.d, var_0.a.a.x << (var_0.b.a.x % 32u)), Struct_2(Struct_1(var_0.a.a, var_0.b.b, vec2<i32>(u_input.b, var_0.c.x), 0u, vec2<f32>(-1221f, -702f)), var_0.b, var_0.c & var_0.c), max(select(u_input.e.x, 1u, global0.x), max(var_0.b.d, u_input.e.x))).b.b.x, vec2<f32>(func_4(var_0.a.b.yxy, var_0, func_1(global0.x).a.x).a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -688f)))), !global0.x);
    var_1 = Struct_3(Struct_1(~(~vec3<u32>(1u, 1u, var_0.b.a.x)), select(_wgslsmith_add_vec4_u32(select(var_1.a.b, var_1.a.b, vec4<bool>(false, false, true, true)), var_1.a.b), countOneBits(abs(vec4<u32>(var_0.a.d, 4294967295u, 23005u, 105232u))), vec4<bool>(true, true, global0.x, var_1.a.e.x != -536f)), vec2<i32>(-(14670i ^ var_1.a.c.x), var_1.a.c.x), u_input.a, var_0.b.e), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, arg_0, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.e.x, 1519f, 101f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, 233f, -144f)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-771f, _wgslsmith_f_op_f32(var_1.a.e.x - arg_1.x), _wgslsmith_f_op_f32(min(730f, var_1.a.e.x))))))));
    return !select(select(select(select(vec4<bool>(true, global0.x, arg_2, var_1.b), vec4<bool>(true, var_1.b, true, false), vec4<bool>(false, var_1.b, global0.x, true)), select(vec4<bool>(false, var_1.b, var_1.b, global0.x), vec4<bool>(true, false, var_1.b, false), vec4<bool>(true, false, false, var_1.b)), global0.x), select(select(vec4<bool>(var_1.b, global0.x, false, arg_2), vec4<bool>(var_1.b, global0.x, arg_2, arg_2), true), vec4<bool>(false, global0.x, false, true), func_3(var_1.a.a.x, vec4<i32>(14684i, u_input.c, -24661i, u_input.c), var_0)), select(vec4<bool>(var_1.b, arg_2, true, true), !vec4<bool>(var_1.b, global0.x, var_1.b, global0.x), vec4<bool>(true, true, true, true))), select(vec4<bool>(!arg_2, !global0.x, any(vec4<bool>(var_1.b, global0.x, var_1.b, true)), var_1.b), vec4<bool>(all(vec3<bool>(false, false, var_1.b)), !global0.x, func_3(var_0.b.b.x, var_0.c, var_0), true), all(select(vec4<bool>(false, global0.x, true, true), vec4<bool>(false, false, arg_2, arg_2), var_1.b))), vec4<bool>(any(!global0.yy), false, var_1.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(false, !select(!global0.x, global0.x == false, false), any(select(!global0.zy, !vec2<bool>(global0.x, true), global0.zz)), true);
    global0 = func_6(_wgslsmith_f_op_f32(func_5(select(min(vec3<u32>(4294967295u, 4294967295u, u_input.e.x), abs(vec3<u32>(4294967295u, u_input.a, u_input.e.x))), vec3<u32>(47281u, 0u, reverseBits(u_input.a)), vec3<bool>(true, global0.x, global0.x)), func_4(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(4294967295u, 1u), u_input.a), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 0u, 4294967295u, 38329u), vec2<i32>(-2147483647i, 1i), 66459u, vec2<f32>(199f, 1000f)), func_1(global0.x), vec4<i32>(u_input.d, u_input.c, 1i, u_input.d) << (vec4<u32>(1u, 0u, 41881u, u_input.a) % vec4<u32>(32u))), u_input.e.x), Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(23657u, 1u, u_input.e.x), vec3<u32>(1u, u_input.e.x, u_input.a)), ~vec4<u32>(u_input.a, u_input.e.x, 12427u, u_input.a), firstTrailingBit(vec2<i32>(u_input.d, 0i)), func_4(vec3<u32>(u_input.a, 0u, u_input.a), Struct_2(Struct_1(vec3<u32>(0u, 0u, u_input.e.x), vec4<u32>(u_input.e.x, 3932u, u_input.a, u_input.e.x), vec2<i32>(u_input.c, u_input.c), 1u, vec2<f32>(-347f, 1000f)), Struct_1(vec3<u32>(1u, 0u, u_input.a), vec4<u32>(1u, u_input.e.x, 62491u, u_input.e.x), vec2<i32>(-35263i, u_input.c), u_input.e.x, vec2<f32>(321f, 1790f)), vec4<i32>(u_input.c, u_input.d, -1i, u_input.b)), 1u).a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1709f, 226f))), global0.x == false), select(select(select(vec4<bool>(false, global0.x, true, false), vec4<bool>(true, global0.x, true, false), vec4<bool>(true, true, global0.x, true)), vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(global0.x, global0.x, true, global0.x), !global0.x == true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(195f, 2176f)))), func_1(any(vec4<bool>(global0.x, false, global0.x, global0.x))).e)), true);
    var var_0 = Struct_1(abs(vec3<u32>(min(1u, ~u_input.e.x), 22535u, u_input.e.x)), vec4<u32>(abs(0u), ~u_input.e.x << (~4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.a >> (u_input.a % 32u), u_input.e.x, reverseBits(u_input.e.x)), ~(~vec4<u32>(74422u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_div_u32(~_wgslsmith_add_u32(46461u, u_input.a), func_4(~vec3<u32>(1u, u_input.e.x, u_input.a), func_4(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_2(Struct_1(vec3<u32>(4294967295u, 24245u, 20217u), vec4<u32>(u_input.a, 1u, u_input.e.x, 36418u), vec2<i32>(u_input.c, u_input.b), 15547u, vec2<f32>(902f, 989f)), Struct_1(vec3<u32>(u_input.e.x, u_input.a, 33314u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec2<i32>(-1i, -36617i), 4294967295u, vec2<f32>(194f, -1820f)), vec4<i32>(-21537i, u_input.c, -1i, 50066i)), 4294967295u), 0u ^ u_input.e.x).b.d)), max(~_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(46189i, -31820i))), ~vec2<i32>(-22436i, min(u_input.b, u_input.d))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2035f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-502f + -934f), _wgslsmith_f_op_f32(abs(-1377f)))))), 635f));
    let var_1 = u_input.a;
    let var_2 = var_0.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.c << (vec2<u32>(var_1, 34106u) % vec2<u32>(32u))) >> (var_0.a.yy % vec2<u32>(32u)), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_2.x, 68094u))), func_1(!any(vec4<bool>(global0.x, false, true, global0.x))).a.x), 65032i >> (_wgslsmith_mult_u32(max(~81740u, ~11275u), u_input.e.x) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - 344f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-975f)) * 1573f) - var_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(688f)) * -1000f) + -484f)), ~var_0.a);
}

