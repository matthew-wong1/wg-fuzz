struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, i32(-2147483648), -36943i);

var<private> global1: array<vec4<i32>, 31>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = ~max(-(~(vec3<i32>(arg_0.b, arg_0.b, arg_1.b.b) ^ vec3<i32>(u_input.c, arg_1.b.b, global0.x))), vec3<i32>(global0.x, u_input.d, global0.x));
    var var_1 = select(~select(~reverseBits(vec4<u32>(41819u, 4294967295u, arg_1.a.a.x, arg_1.b.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.d, 8555u, 4294967295u, arg_1.a.a.x), ~vec4<u32>(12310u, 33930u, u_input.e, 1u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), arg_1.c.x > -678f)), countOneBits(vec4<u32>(arg_0.a.x, firstTrailingBit(arg_1.a.a.x), _wgslsmith_mult_u32(7802u, 7796u), ~u_input.b & _wgslsmith_clamp_u32(u_input.b, 27325u, u_input.e))), vec4<bool>(true, all(vec2<bool>(true, true)) || true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))) | all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))));
    let var_2 = -1123f;
    var var_3 = vec2<i32>(~select(-(~global0.x), select(u_input.c, _wgslsmith_div_i32(var_0.x, 1i), false), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), -1i);
    let var_4 = arg_1;
    return !(!vec4<bool>(true, _wgslsmith_f_op_f32(sign(var_2)) < _wgslsmith_f_op_f32(f32(-1f) * -348f), any(vec4<bool>(true, false, false, false)), false));
}

fn func_2() -> i32 {
    global0 = ~max(vec3<i32>(global0.x, countOneBits(_wgslsmith_div_i32(-586i, global0.x)), -2457i), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c, global0.x), vec3<i32>(7021i, u_input.c, u_input.d)), 1i, u_input.c & u_input.c), (vec3<i32>(global0.x, 0i, global0.x) >> (u_input.a % vec3<u32>(32u))) ^ -vec3<i32>(0i, -1i, -1i)));
    var var_0 = 1u;
    let var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)))), !select(!func_3(Struct_1(u_input.a, 1i), Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.e, 17415u), u_input.d), Struct_1(vec3<u32>(4294967295u, 1u, u_input.b), -2147483647i), vec3<f32>(-377f, -549f, 1016f), 58888u)), vec4<bool>(true, true, 68394i <= u_input.d, true), true), (func_3(Struct_1(vec3<u32>(1u, u_input.b, u_input.b), global0.x), Struct_2(Struct_1(vec3<u32>(u_input.b, 2798u, 0u), global0.x), Struct_1(u_input.a, u_input.c), vec3<f32>(1108f, -1498f, 1488f), 16687u)).x == all(vec3<bool>(true, true, true))) & true);
    let var_2 = 745f;
    let var_3 = Struct_1(vec3<u32>(abs(_wgslsmith_add_u32(~u_input.a.x, 8774u)), ~u_input.e, 4294967295u), 1i);
    return -29986i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), true));
    let var_1 = vec3<bool>((10463u ^ firstTrailingBit(_wgslsmith_mod_u32(arg_2.a.x, u_input.a.x))) >= ~_wgslsmith_mod_u32(arg_2.a.x, 1u), !(arg_2.a.x >= (arg_2.a.x & ~0u)), true);
    var var_2 = Struct_2(arg_2, Struct_1(vec3<u32>(~(~1u), reverseBits(~arg_2.a.x), countOneBits(4284u) >> (~u_input.b % 32u)), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(601f, -1228f, -169f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, 1000f, -245f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2096f, -1000f, 1056f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-412f, 386f, -1622f), vec3<f32>(471f, -1802f, 1790f))))))), 81206u);
    var var_3 = Struct_2(var_2.b, var_2.a, _wgslsmith_f_op_vec3_f32(var_2.c - vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c.x, -1256f))), 2283f)), 67039u);
    let var_4 = firstTrailingBit(23246u);
    return Struct_1(~vec3<u32>(u_input.a.x, ~var_4, ~1u) | _wgslsmith_clamp_vec3_u32(abs(arg_2.a & u_input.a), abs(~var_3.a.a), ~(~vec3<u32>(arg_2.a.x, var_4, arg_2.a.x))), _wgslsmith_sub_i32(15963i, u_input.c));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = vec3<bool>(true, true, select(arg_3, (global0.x != min(global0.x, u_input.c)) | select(false, true || arg_3, !arg_3), arg_3 || false));
    var var_1 = abs(vec4<i32>(arg_2.x, i32(-1i) * -u_input.d, global0.x << (_wgslsmith_dot_vec3_u32(u_input.a, abs(vec3<u32>(1u, u_input.b, arg_1.a.x))) % 32u), arg_2.x));
    global1 = array<vec4<i32>, 31>();
    global0 = _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-16669i, -10523i, arg_0.x) << (arg_1.a % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(-1i, abs(arg_1.b)), _wgslsmith_mod_i32(u_input.c, -35249i) | -22288i, ~0i)) | vec3<i32>(-abs(arg_1.b >> (4294967295u % 32u)), arg_0.x, arg_2.x);
    let var_2 = arg_1.a.zz;
    return Struct_2(func_4(func_4(max(~arg_0.x, -2147483647i), abs(var_1.x << (u_input.a.x % 32u)), func_4(-2147483647i, ~36190i, arg_1)).b, i32(-1i) * -reverseBits(2147483647i), arg_1), Struct_1(~(~vec3<u32>(u_input.a.x, arg_1.a.x, 3888u)), _wgslsmith_mult_i32(2722i, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1248f, _wgslsmith_f_op_f32(round(1f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1329f, 888f, -1660f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, -1409f, 605f) * vec3<f32>(-1518f, -1000f, -397f))), vec3<f32>(_wgslsmith_div_f32(1000f, -987f), _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(f32(-1f) * -378f))))), 39332u);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = !select((4294967295u & u_input.b) >= 0u, false, !(false == arg_1)) && true;
    let var_1 = ~0u;
    global0 = abs(vec3<i32>(global0.x, ~(-2147483647i) & select(-7017i >> (u_input.a.x % 32u), ~1i, true), ~((0i >> (1u % 32u)) & u_input.d)));
    global0 = ~(~firstTrailingBit(-firstLeadingBit(vec3<i32>(2147483647i, global0.x, -8322i))));
    return func_5(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_div_vec2_i32(reverseBits(arg_0.b.yx), global0.zy)), vec2<i32>(global0.x, ~(-arg_0.a.a.b))), arg_0.c, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32((57842u ^ u_input.b) ^ ~1u, 0u, 21315u), 31u)], true).a;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = func_6(Struct_3(func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 49172i), vec2<i32>(-12627i, u_input.c) ^ vec2<i32>(-1i, global0.x)), func_4(func_2(), u_input.d ^ u_input.d, Struct_1(u_input.a, -24527i)), vec4<i32>(~u_input.c, -1i, 892i, -2545i & global0.x), false), -select(-vec3<i32>(global0.x, 2147483647i, global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(8158i, 19874i, global0.x), vec3<i32>(-33036i, u_input.d, global0.x)), all(vec3<bool>(arg_0, arg_0, true))), Struct_1(u_input.a, -54444i), min(vec4<u32>(1u, 1u | u_input.e, ~1u, ~9714u), vec4<u32>(3200u, 0u, 0u, u_input.e) | vec4<u32>(1u, 18636u, u_input.a.x, 265u))), true, !(~(~u_input.e) != ~(~u_input.b)), true);
    var var_1 = ~var_0.a.x;
    let var_2 = Struct_1(var_0.a, u_input.d);
    let var_3 = func_5(firstLeadingBit(min(vec2<i32>(-1i, 2147483647i), _wgslsmith_clamp_vec2_i32(global0.xy, vec2<i32>(u_input.d, 0i) ^ vec2<i32>(var_2.b, -1i), global0.xx))), Struct_1(var_2.a, 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(21812u, _wgslsmith_div_u32(4294967295u, 42561u)), 31u)], true);
    var var_4 = var_3.c;
    return Struct_3(var_3, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(6862i, global0.x, -45095i), firstTrailingBit(~vec3<i32>(u_input.d, -1i, -2147483647i)), ~firstLeadingBit(vec3<i32>(1i, var_2.b, -1i))), ~_wgslsmith_div_vec3_i32(-vec3<i32>(43658i, 0i, var_0.b), -vec3<i32>(2147483647i, var_0.b, -352i))), func_4(-var_0.b, abs(max(_wgslsmith_div_i32(var_3.b.b, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.b, -7800i, -14538i), vec3<i32>(2147483647i, var_2.b, 15570i)))), func_5(global0.zz, func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -7653i), vec2<i32>(u_input.c, var_2.b), vec2<i32>(var_3.a.b, -2147483647i)), Struct_1(vec3<u32>(u_input.a.x, var_0.a.x, 1u), 11405i), _wgslsmith_mod_vec4_i32(vec4<i32>(-23003i, -2857i, -2147483647i, 0i), global1[_wgslsmith_index_u32(var_3.b.a.x, 31u)]), false).a, -global1[_wgslsmith_index_u32(func_6(Struct_3(Struct_2(Struct_1(vec3<u32>(var_0.a.x, 4939u, var_2.a.x), -1i), var_2, vec3<f32>(-391f, var_4.x, var_3.c.x), 41535u), vec3<i32>(-12653i, u_input.c, var_3.a.b), var_3.b, vec4<u32>(var_3.b.a.x, u_input.e, u_input.b, 135604u)), false, arg_0, arg_0).a.x, 31u)], select(false, arg_0, true)).a), vec4<u32>(firstTrailingBit(~(~1u)), ~var_2.a.x, select(~(~1333u), var_0.a.x, arg_0 & any(vec2<bool>(true, arg_0))), var_0.a.x));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_1.c;
    var var_1 = !(!arg_0);
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(-28027i, 1i) | var_0.b, -4507i), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b)), -arg_2.a.a.b >> (5070u % 32u), -1i)) << (79292u % 32u);
    var var_4 = Struct_3(func_1(arg_0).a, _wgslsmith_mod_vec3_i32(arg_1.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), ~arg_2.b), reverseBits(arg_1.b), -vec3<i32>(global0.x, -66239i, 15679i))), arg_1.c, vec4<u32>(arg_2.a.b.a.x, func_4(_wgslsmith_div_i32(-28712i, 1i), _wgslsmith_mod_i32(~u_input.c, select(arg_1.b.x, 12077i, arg_0)), var_2.a).a.x, ~27206u, arg_2.c.a.x));
    return func_1(arg_0).a;
}

fn func_8(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = abs(vec4<u32>(_wgslsmith_add_u32(func_1(true).d.x, 10175u), u_input.e, ~(~4294967295u), arg_0.b.a.x)) ^ vec4<u32>(1u, arg_1 & ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 1u, 10930u), vec3<u32>(arg_2, 0u, arg_2)), ~(~4294967295u), func_7(true, func_1(false), Struct_3(arg_0, vec3<i32>(1i, 2147483647i, u_input.c), Struct_1(vec3<u32>(4294967295u, 27891u, 99680u), 5449i), vec4<u32>(u_input.e, arg_1, 1097u, u_input.a.x))).a.a.x >> (firstLeadingBit(124694u) % 32u));
    global0 = vec3<i32>(global0.x, ~(-42675i), func_2());
    var var_1 = -vec2<i32>(0i, _wgslsmith_div_i32(-(i32(-1i) * -61590i), u_input.c));
    let var_2 = var_1.x;
    var var_3 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(func_6(func_1(true), arg_2 >= 37677u, true, true).b, i32(-1i) * -global0.x, -16164i), abs(abs(-vec3<i32>(1324i, -2147483647i, var_1.x)))), -59995i, -(_wgslsmith_mod_i32(-1i >> (0u % 32u), _wgslsmith_mult_i32(u_input.d, u_input.d)) | _wgslsmith_div_i32(-2147483647i, global0.x >> (4294967295u % 32u))));
    return _wgslsmith_mod_i32(-39830i | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.a.b, u_input.d) ^ -var_3.xzx, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, var_1.x, var_1.x), var_3.xzz))), -15587i ^ _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(var_1.x, -92995i, arg_0.a.b))), select(var_3.yyz, var_3.yyx, arg_0.c.x <= arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.e, u_input.e) | u_input.a, max(u_input.a, u_input.a))), func_8(func_7(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), func_1(true), Struct_3(Struct_2(Struct_1(vec3<u32>(41254u, u_input.e, u_input.e), u_input.d), Struct_1(vec3<u32>(u_input.b, u_input.e, 0u), -13369i), vec3<f32>(-2149f, 754f, 1149f), 0u), vec3<i32>(-4625i, global0.x, -8675i), Struct_1(u_input.a, global0.x), vec4<u32>(u_input.b, 4294967295u, u_input.e, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.e, 46948u) % vec4<u32>(32u)))), _wgslsmith_add_u32(u_input.b << (1u % 32u), min(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b << (1u % 32u))), u_input.a.x));
    var_0 = Struct_1(func_5(global0.xy, func_7(true, func_1(false), func_1(true)).b, countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.c, 4789i), func_6(Struct_3(Struct_2(Struct_1(vec3<u32>(var_0.a.x, u_input.a.x, 52848u), 0i), Struct_1(u_input.a, u_input.d), vec3<f32>(-945f, 148f, -1000f), 38276u), vec3<i32>(0i, var_0.b, u_input.c), Struct_1(vec3<u32>(29105u, 1u, var_0.a.x), global0.x), vec4<u32>(var_0.a.x, u_input.b, var_0.a.x, var_0.a.x)), true, false, true).b, -55514i, 1i)), true).b.a, var_0.b);
    var_0 = Struct_1(func_4(global0.x, func_6(Struct_3(func_1(false).a, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 0i, 15675i), vec3<i32>(-27736i, var_0.b, -2147483647i)), Struct_1(vec3<u32>(u_input.e, u_input.e, 15465u), var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 15021u, u_input.b, 128040u), vec4<u32>(var_0.a.x, 18781u, u_input.b, var_0.a.x))), false, select(true, all(vec2<bool>(false, true)), true), !any(vec2<bool>(false, false))).b, func_4(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -22998i, 19919i), vec3<i32>(var_0.b, global0.x, 22684i)), func_5(~global0.zz, func_7(false, Struct_3(Struct_2(Struct_1(var_0.a, u_input.d), Struct_1(vec3<u32>(4294967295u, u_input.e, 119462u), -44041i), vec3<f32>(-314f, -644f, -393f), 1u), vec3<i32>(-16618i, -46684i, global0.x), Struct_1(u_input.a, 1i), vec4<u32>(u_input.b, var_0.a.x, 45996u, 0u)), Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.e, 16851u), var_0.b), Struct_1(vec3<u32>(8344u, var_0.a.x, var_0.a.x), var_0.b), vec3<f32>(-788f, -1014f, -1000f), 1u), vec3<i32>(-28916i, global0.x, u_input.c), Struct_1(vec3<u32>(u_input.a.x, var_0.a.x, var_0.a.x), u_input.d), vec4<u32>(u_input.b, u_input.b, var_0.a.x, u_input.a.x))).b, vec4<i32>(var_0.b, 49508i, u_input.c, 18844i), false).b)).a, _wgslsmith_sub_i32(-5433i, ~0i));
    let var_1 = global0.x;
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(var_0.a.x, u_input.e, u_input.b))), var_0.a ^ var_0.a, var_0.a), _wgslsmith_mod_vec3_u32(~u_input.a, ~func_4(-7745i, 2147483647i, Struct_1(vec3<u32>(var_0.a.x, 4294967295u, 62106u), -14442i)).a)), -30807i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, 4294967295u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1198f, 1548f))))), vec2<f32>(_wgslsmith_div_f32(1440f, -1000f), 1f))), 1u);
}

