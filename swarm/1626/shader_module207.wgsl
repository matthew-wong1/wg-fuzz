struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_2, Struct_1(~0u, ~_wgslsmith_clamp_vec3_u32(arg_2.c.xyy, abs(arg_1.a.c.wzx), vec3<u32>(arg_2.b.x, 1u, 7411u)), arg_1.a.c, arg_2.d, !(!select(vec3<bool>(arg_1.b.e.x, arg_1.c.x, true), vec3<bool>(arg_1.a.d.x, false, arg_2.e.x), arg_2.e.x))), select(arg_1.b.d, vec3<bool>((4294967295u & u_input.a.x) == 16364u, true, arg_2.e.x), vec3<bool>(any(vec2<bool>(true, false)), any(arg_1.a.e.xy), select(arg_1.a.d.x, true, true))));
    let var_1 = (1u << (select(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(53476u, 14u)], arg_2.a, u_input.a.x), reverseBits(~4294967295u), !all(var_0.a.e.yz)) % 32u)) | ~(~(global0[_wgslsmith_index_u32(select(4294967295u, 44320u, true), 14u)] ^ ~4294967295u));
    var var_2 = 241f;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3251f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f - 151f) - _wgslsmith_f_op_f32(select(-1658f, -170f, true))), _wgslsmith_f_op_f32(-1866f * _wgslsmith_f_op_f32(142f + 700f)))) * 197f), !(all(vec4<bool>(var_0.b.e.x, false, true, arg_1.b.e.x)) || arg_1.b.d.x)));
    var_0 = Struct_2(arg_1.a, Struct_1(abs(~6000u), abs(vec3<u32>(_wgslsmith_sub_u32(1u, arg_1.b.b.x), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 14u)], 76823u), reverseBits(0u))), firstTrailingBit(~(~vec4<u32>(1u, 4294967295u, 33799u, 31810u))), vec3<bool>(true, !arg_1.a.d.x, !(!var_0.c.x)), vec3<bool>(!(!var_0.c.x), arg_2.d.x, false)), !select(!(!arg_1.c), vec3<bool>(!arg_1.a.e.x, var_0.a.d.x, u_input.c >= 7874i), select(var_0.c, arg_1.c, !var_0.b.e)));
    return 2350u;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> vec3<bool> {
    global0 = array<u32, 14>();
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~arg_1), firstTrailingBit(global0[_wgslsmith_index_u32(67327u, 14u)]), ~0u | arg_1, global0[_wgslsmith_index_u32(~(~arg_2), 14u)]), (vec4<u32>(4294967295u, 1337u, 49145u, 20391u) | vec4<u32>(4294967295u, 0u, arg_2, global0[_wgslsmith_index_u32(18920u, 14u)])) >> (~vec4<u32>(46494u, 0u, 3978u, 0u) % vec4<u32>(32u))) & (~u_input.a.x ^ func_3(-10304i, Struct_2(Struct_1(33461u, vec3<u32>(18231u, global0[_wgslsmith_index_u32(41365u, 14u)], arg_2), vec4<u32>(global0[_wgslsmith_index_u32(41994u, 14u)], global0[_wgslsmith_index_u32(arg_1, 14u)], arg_2, global0[_wgslsmith_index_u32(23677u, 14u)]), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), Struct_1(arg_1, vec3<u32>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_2), vec4<u32>(arg_1, arg_1, u_input.a.x, arg_1), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true)), Struct_1(12696u, vec3<u32>(41923u, 4294967295u, 20138u), vec4<u32>(19916u, 79229u, 4294967295u, arg_2) << (vec4<u32>(29792u, 7631u, u_input.a.x, 1u) % vec4<u32>(32u)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_2(Struct_1(~(arg_2 | (u_input.a.x & global0[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a.x, 55971u, arg_2), vec3<u32>(46419u, 0u, 1u), vec3<bool>(false, true, false)), ~vec3<u32>(1u, arg_1, global0[_wgslsmith_index_u32(92610u, 14u)])) | vec3<u32>(0u, ~u_input.a.x, min(76154u, global0[_wgslsmith_index_u32(17440u, 14u)])), ~vec4<u32>(min(4294967295u, arg_2), 1u, ~arg_2, u_input.a.x), vec3<bool>(true, true, true), !vec3<bool>(select(false, true, false), arg_0 != -182f, true)), Struct_1(min(~_wgslsmith_clamp_u32(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 4294967295u), max(arg_1, ~8558u)), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(4294967295u, u_input.a.x, 1u), abs(vec3<u32>(arg_2, u_input.a.x, arg_1))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(35882u, arg_2, 16769u), vec3<u32>(arg_2, 1u, 1u)), min(u_input.a.x, 4294967295u), u_input.a.x >> (arg_2 % 32u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(35428u, 24721u, arg_2, 4294967295u) ^ vec4<u32>(38983u, arg_1, 4294967295u, 1u)), ~vec4<u32>(global0[_wgslsmith_index_u32(47037u, 14u)], 35671u, 6103u, arg_2)), vec3<bool>(!all(vec2<bool>(false, true)), !any(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false))), vec3<bool>(true, !(0u == arg_2), (global0[_wgslsmith_index_u32(0u, 14u)] & arg_1) < 4294967295u)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), false && (arg_0 <= 1000f)));
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>((0u | _wgslsmith_dot_vec2_u32(vec2<u32>(20331u, global0[_wgslsmith_index_u32(arg_1, 14u)]), vec2<u32>(global0[_wgslsmith_index_u32(arg_2, 14u)], 1u))) >> (global0[_wgslsmith_index_u32(7280u, 14u)] % 32u), arg_1, 13228u), min(select(var_1.a.b & (vec3<u32>(arg_2, 43825u, 270u) << (vec3<u32>(var_1.b.a, 4294967295u, var_1.a.b.x) % vec3<u32>(32u))), vec3<u32>(4294967295u, 1u, ~4294967295u), !var_1.a.d.x), vec3<u32>(~_wgslsmith_mult_u32(56158u, 42025u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u) << (u_input.a.x % 32u), 1u)));
    return select(select(var_1.a.e, !var_1.a.d, any(vec3<bool>(all(var_1.b.d.xy), u_input.c < u_input.d.x, var_1.a.e.x || var_1.a.d.x))), select(var_1.a.e, var_1.c, all(var_1.b.e.zy) && false), 1i != u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_u32(arg_3.c.x, min(arg_3.b.x << (select(4294967295u << (arg_0.a % 32u), ~0u, true) % 32u), firstLeadingBit(func_3(1i & u_input.c, Struct_2(Struct_1(u_input.a.x, arg_3.c.zyy, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(2777u, 14u)], u_input.a.x, arg_3.b.x), arg_2.yzx, vec3<bool>(arg_0.d.x, arg_1.x, arg_3.e.x)), Struct_1(1u, arg_3.b, vec4<u32>(global0[_wgslsmith_index_u32(8962u, 14u)], 8688u, arg_0.c.x, 1u), vec3<bool>(arg_1.x, arg_3.d.x, arg_0.d.x), arg_1.yyx), vec3<bool>(true, true, arg_1.x)), arg_0))));
    var var_1 = Struct_2(Struct_1(var_0, vec3<u32>(~(arg_0.a | 1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstTrailingBit(1u), 14u)], 14u)], ~u_input.a.x), arg_0.c, arg_3.d, arg_3.d), arg_3, vec3<bool>(arg_2.x, 1u == ~(~arg_3.c.x), !select(arg_2.x, true, true) & arg_0.e.x));
    var var_2 = Struct_2(var_1.b, var_1.a, vec3<bool>(!(!var_1.b.d.x), var_1.a.d.x, false));
    global0 = array<u32, 14>();
    let var_3 = Struct_2(arg_0, arg_3, vec3<bool>(true, 1i == u_input.d.x, false));
    return -711f;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = countOneBits(21607u);
    global0 = array<u32, 14>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-231f)) + 1f) * -703f)), 1266f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-299f, 1053f)))), _wgslsmith_f_op_f32(func_4(Struct_1(arg_1, vec3<u32>(4294967295u, u_input.a.x, 4294967295u), ~vec4<u32>(0u, 91222u, arg_1, u_input.a.x), func_2(-1000f, 18717u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, u_input.c != -18408i, any(vec2<bool>(false, true))), Struct_1(91247u, ~vec3<u32>(arg_1, global0[_wgslsmith_index_u32(0u, 14u)], 12416u), vec4<u32>(19676u, 1u, 20719u, arg_1) << (vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 14u)], 44194u, 1u) % vec4<u32>(32u)), vec3<bool>(false, false, false), func_2(-1265f, 0u, 4294967295u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-851f, -289f)) + _wgslsmith_f_op_f32(func_4(Struct_1(~59603u, _wgslsmith_add_vec3_u32(vec3<u32>(4673u, 0u, 88381u), vec3<u32>(51297u, 4294967295u, 0u)), vec4<u32>(arg_1, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41u, 14u)], 14u)], 4294967295u), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), false), vec4<bool>(select(false, false, false), func_2(-1164f, arg_1, 39447u).x, true, func_2(-785f, u_input.a.x, 1u).x), Struct_1(u_input.a.x, vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 14u)], 14u)], 16263u) ^ vec3<u32>(4294967295u, 22198u, 43266u), vec4<u32>(arg_1, 15608u, arg_1, var_0) >> (vec4<u32>(var_0, 31592u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    global0 = array<u32, 14>();
    var var_2 = Struct_1(~4294967295u >> (~abs(~var_0) % 32u), (~(vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], arg_1, 0u) << (vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(53782u, 14u)]) % vec3<u32>(32u))) >> (vec3<u32>(var_0, 0u, func_3(-68490i, Struct_2(Struct_1(var_0, vec3<u32>(u_input.a.x, u_input.a.x, 7368u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], 20764u, arg_1), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_1(1u, vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(33217u, 14u)], 13695u), vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 14u)], 0u, 10339u, arg_1), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)), Struct_1(arg_1, vec3<u32>(arg_1, 4294967295u, 0u), vec4<u32>(4294967295u, var_0, var_0, u_input.a.x), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))) % vec3<u32>(32u))) >> (max(~(~vec3<u32>(81915u, 46663u, 0u)), vec3<u32>(~global0[_wgslsmith_index_u32(74767u, 14u)], var_0, _wgslsmith_div_u32(var_0, 1398u))) % vec3<u32>(32u)), firstTrailingBit((~vec4<u32>(var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(30293u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]) >> (~vec4<u32>(global0[_wgslsmith_index_u32(38229u, 14u)], 61404u, global0[_wgslsmith_index_u32(41805u, 14u)], 1u) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_sub_u32(58155u, u_input.a.x), ~arg_1, ~u_input.a.x, ~var_0)), vec3<bool>(-min(12795i, -11143i) != _wgslsmith_sub_i32(0i ^ u_input.d.x, ~arg_0), true, true), func_2(-219f, ~firstTrailingBit(firstTrailingBit(0u)), _wgslsmith_clamp_u32(25794u, 0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(35790u, 14u)] & 67733u, var_0))));
    return Struct_1(17699u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(~70274u, abs(arg_1)), 5511u & ~arg_1) % 32u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.x, 0u, arg_1), vec3<u32>(global0[_wgslsmith_index_u32(~var_2.b.x, 14u)], 22481u, ~abs(53091u))), vec4<u32>(~24845u, ~u_input.a.x, ~arg_1, ~abs(var_0)), select(var_2.e, !var_2.d, var_2.e.x && true), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_0 = Struct_2(func_1(~(-2147483647i), max(~4294967295u, ~countOneBits(49362u))), Struct_1(firstTrailingBit(max(4294967295u, global0[_wgslsmith_index_u32(1u, 14u)])) ^ firstLeadingBit(70586u), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58913u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) & vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 10467u, 5789u, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) >> (vec4<u32>(1u, 0u, 6302u, u_input.a.x) % vec4<u32>(32u))), ~global0[_wgslsmith_index_u32(0u >> (1u % 32u), 14u)]), vec4<u32>(~(u_input.a.x | u_input.a.x), ~(~18595u), func_1(u_input.c, 26369u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81042u, 14u)], 14u)] % 32u)).b.x, u_input.a.x), !vec3<bool>(u_input.a.x <= global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, true), vec3<bool>(true, true, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)] >= u_input.a.x) & false)), vec3<bool>(true, any(vec4<bool>(any(vec2<bool>(true, false)), true, true, func_1(u_input.b, u_input.a.x).d.x)), (44369i >= ~u_input.c) && true));
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.c, u_input.c), vec4<i32>(2147483647i, u_input.b, u_input.d.x, -58245i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -8607i, u_input.d.x, -1015i), vec4<i32>(u_input.b, u_input.d.x, -1i, u_input.c))), reverseBits(min(max(u_input.d.x, u_input.b), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-1300i, 14270i, u_input.d.x))))), ~vec2<i32>(u_input.d.x, u_input.c), u_input.d.xx);
    let var_2 = _wgslsmith_div_vec2_u32(select(var_0.a.b.zy, var_0.a.b.yz, vec2<bool>(true, false)), var_0.b.b.yz >> (_wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, 31858u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.b.b.zy, u_input.a), u_input.a)) % vec2<u32>(32u)));
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-568f, 305f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * 386f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-281f, 643f)) * _wgslsmith_f_op_f32(f32(-1f) * -690f))), -1349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + -269f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(945f, 1f, _wgslsmith_f_op_f32(select(-1594f, _wgslsmith_div_f32(938f, 105f), var_3.e.x))))));
}

