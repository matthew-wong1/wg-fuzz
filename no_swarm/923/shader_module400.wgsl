struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(394f, -601f), Struct_1(531u, false, -924f), vec2<f32>(-1676f, 114f), -10791i, Struct_1(36886u, true, -1000f));

var<private> global1: u32 = 46331u;

var<private> global2: array<f32, 23>;

var<private> global3: array<i32, 30>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1711f, -1000f, -916f, arg_1.b.c.x), vec4<f32>(-1000f, 856f, -1677f, global0.b.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1423f, 1824f, 1889f, -742f) + vec4<f32>(-797f, -1263f, arg_1.a.c, 1366f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.c.e.c, -672f, -505f, 365f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1513f, global0.a.x, var_0.c, 211f)), vec4<f32>(-958f, var_0.c, 1574f, global2[_wgslsmith_index_u32(4294967295u, 23u)])))))));
    let var_2 = arg_2;
    return vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false | arg_1.b.e.b, !global0.e.b), arg_1.e.b)), !global0.e.b, abs(abs(~global0.b.a)) >= 4294967295u, global0.e.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = !(!(any(func_3(Struct_5(u_input.b.xz), Struct_4(Struct_1(0u, false, 476f), Struct_2(global0.a, arg_2, global0.c, 1i, arg_2), Struct_2(vec2<f32>(-1179f, -374f), Struct_1(arg_2.a, true, global2[_wgslsmith_index_u32(116495u, 23u)]), vec2<f32>(817f, 1212f), global0.d, arg_2), arg_0, Struct_1(4294967295u, arg_2.b, global0.b.c)), Struct_3(1i))) | !func_3(Struct_5(vec2<u32>(29457u, arg_2.a)), Struct_4(global0.b, Struct_2(vec2<f32>(-1175f, 407f), Struct_1(1u, global0.b.b, -225f), vec2<f32>(-282f, 1109f), arg_1.x, Struct_1(3604u, arg_2.b, 1040f)), Struct_2(vec2<f32>(arg_2.c, arg_2.c), global0.e, vec2<f32>(-405f, -923f), arg_1.x, Struct_1(33392u, global0.b.b, arg_2.c)), arg_0, Struct_1(49648u, global0.e.b, -1259f)), Struct_3(12456i)).x));
    var var_1 = ~(~(vec4<u32>(4294967295u, arg_0.x, 39679u, 0u) & (vec4<u32>(global0.e.a, 35929u, arg_0.x, arg_2.a) | vec4<u32>(arg_2.a, 28416u, u_input.b.x, arg_2.a))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.x), u_input.b), u_input.a, 45016u), vec4<u32>(11633u, ~0u, 4294967295u, u_input.a)) % vec4<u32>(32u)));
    var var_2 = ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, var_1.x), 1u, _wgslsmith_mod_u32(arg_0.x, var_1.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~4294967295u), abs(_wgslsmith_dot_vec2_u32(u_input.b.zy, var_1.wy)))), 30u)];
    return vec4<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, arg_1.x, arg_1.x) ^ countOneBits(vec3<i32>(1907i, -1i, 1i)), vec3<i32>(arg_1.x, _wgslsmith_mult_i32(1i, global3[_wgslsmith_index_u32(global0.b.a, 30u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(-12797i, 0i), vec2<i32>(global3[_wgslsmith_index_u32(9573u, 30u)], -34950i)))), firstTrailingBit(i32(-1i) * -8858i), abs(global3[_wgslsmith_index_u32(arg_2.a, 30u)]), ~(_wgslsmith_mod_i32(-2147483647i, arg_1.x & arg_1.x) >> ((~var_1.x | _wgslsmith_mult_u32(9166u, arg_0.x)) % 32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_5 {
    var var_0 = ~vec4<u32>(select(countOneBits(484u), _wgslsmith_mod_u32(arg_2.e.a, u_input.a), global0.e.b & false), u_input.b.x, countOneBits(1u), ~arg_2.b.a ^ arg_2.b.a) >> (abs(vec4<u32>(~(~7961u), _wgslsmith_add_u32(~global0.e.a, u_input.a), u_input.a, 1u)) % vec4<u32>(32u));
    let var_1 = arg_2;
    global3 = array<i32, 30>();
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(0u, ~arg_2.e.a), 3453u) >> (var_0.zz % vec2<u32>(32u));
    var_0 = (countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 36963u, global0.e.a, 5157u), vec4<u32>(var_1.e.a, var_0.x, 96742u, 4294967295u))) >> (firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 72145u, 51215u, 20746u), vec4<u32>(global0.b.a, var_2.x, var_1.b.a, u_input.b.x), vec4<u32>(50369u, 9663u, global0.e.a, arg_2.b.a))) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 1u, var_1.b.a, arg_2.b.a) ^ vec4<u32>(1u, 1u, global0.e.a, 0u), ~vec4<u32>(u_input.b.x, 13718u, 1u, global0.e.a)) | ~(~vec4<u32>(0u, 76518u, var_0.x, u_input.a)), ~countOneBits(~vec4<u32>(global0.e.a, 19651u, 0u, global0.e.a)), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, global0.e.a, 24708u, 30508u), vec4<u32>(arg_2.e.a, var_1.b.a, 9736u, var_2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 85712u, u_input.a) | vec4<u32>(1u, 95825u, 19157u, 0u), reverseBits(vec4<u32>(1u, 0u, 37979u, arg_2.b.a)))));
    return Struct_5(~vec2<u32>(~reverseBits(4294967295u), _wgslsmith_mod_u32(~u_input.a, 25171u)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = func_4(-(-max(vec4<i32>(global3[_wgslsmith_index_u32(20278u, 30u)], arg_2.a, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<i32>(global0.d, arg_0.a, -1i, -1i)) ^ func_2(vec2<u32>(0u, arg_3.x), vec2<i32>(-1i, -34424i), global0.e)), vec4<i32>(global0.d, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-2147483647i, 1i)), vec2<i32>(abs(global3[_wgslsmith_index_u32(global0.b.a, 30u)]), 40011i)), arg_0.a, ~11080i), Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(-1645f, 146f)), vec2<f32>(global2[_wgslsmith_index_u32(global0.b.a, 23u)], -2376f))))), Struct_1(u_input.a, false, -485f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.c, vec2<f32>(global0.a.x, global0.c.x))), global0.c)), select(1i, min(0i & arg_0.a, -arg_2.a), true), global0.e));
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(-(arg_2.a >> (0u % 32u)), firstLeadingBit(~arg_0.a), arg_2.a);
    global0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a * global0.c))))), global0.b, global0.c, global3[_wgslsmith_index_u32(var_0.a.x, 30u)], global0.b);
    global0 = Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], -905f), global0.e, vec2<f32>(900f, _wgslsmith_f_op_f32(floor(global0.c.x))), min(select(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.b.a, 30u)], -23393i), ~var_1.x, global0.b.b) ^ ~firstTrailingBit(12773i), _wgslsmith_sub_i32(var_1.x, arg_0.a)), Struct_1(_wgslsmith_clamp_u32(0u << ((12479u << (global0.e.a % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(u_input.a, global0.b.a)), ~4294967295u), arg_3.x | u_input.b.x), all(select(vec4<bool>(arg_1, true, global0.e.b, false), func_3(Struct_5(arg_3.yx), Struct_4(global0.e, Struct_2(vec2<f32>(-1053f, 561f), global0.e, vec2<f32>(-860f, -1352f), -2147483647i, Struct_1(25698u, arg_1, -1732f)), Struct_2(global0.a, global0.e, global0.c, -21860i, global0.e), var_0.a, global0.b), arg_0), global0.b.b == false)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(21065u, global0.b.a), 23u)]));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.x, 0u), 23u)];
    return Struct_2(global0.a, Struct_1(~0u, _wgslsmith_add_u32(arg_3.x, ~var_0.a.x) < ~(~var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + global0.e.c) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 23u)] - -154f)))), vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d, global3[_wgslsmith_index_u32(arg_3.x, 30u)], 1i, global0.d), vec4<i32>(var_1.x, arg_2.a, -2147483647i, 1i)), vec4<i32>(global0.d, -2147483647i, -2147483647i, -2948i), Struct_2(global0.c, global0.b, vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), 52808i, global0.e)).a.x, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2340f)) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1454f)), var_1.x, global0.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    let var_0 = global0.d;
    var var_1 = Struct_4(func_1(Struct_3(-global0.d), arg_0.e.b, Struct_3(_wgslsmith_sub_i32(arg_0.d, 9513i)), reverseBits(~reverseBits(vec4<u32>(0u, global0.b.a, arg_0.b.a, arg_0.e.a)))).b, Struct_2(vec2<f32>(1341f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)])), func_1(arg_1, all(vec3<bool>(true, true, true)), arg_1, ~select(vec4<u32>(arg_0.e.a, global0.b.a, u_input.b.x, 1u), vec4<u32>(4294967295u, 32332u, u_input.a, u_input.a), false)).e, global0.c, 34433i, Struct_1(reverseBits(global0.b.a), any(func_3(Struct_5(vec2<u32>(global0.b.a, 56459u)), Struct_4(Struct_1(u_input.a, true, -267f), Struct_2(vec2<f32>(146f, -1206f), Struct_1(0u, arg_2, global2[_wgslsmith_index_u32(u_input.a, 23u)]), vec2<f32>(-432f, -702f), arg_0.d, arg_0.e), arg_0, vec2<u32>(u_input.b.x, global0.b.a), arg_0.e), Struct_3(global0.d)).xwz), 616f)), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2486f, 1875f)) - vec2<f32>(global0.c.x, 187f)), arg_0.a, any(!vec2<bool>(arg_2, false)))), global0.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_0.e.c * -629f), _wgslsmith_f_op_f32(global0.c.x - global2[_wgslsmith_index_u32(arg_0.e.a, 23u)])))), ~_wgslsmith_div_i32(arg_0.d, -2147483647i) & arg_0.d, func_1(arg_1, all(vec2<bool>(arg_0.b.b, true)), Struct_3(~arg_1.a), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.e.a, 4294967295u, u_input.b.x, 53717u), vec4<u32>(global0.e.a, arg_0.e.a, arg_0.e.a, arg_0.e.a))).e), vec2<u32>(reverseBits(~global0.b.a), 84380u), func_1(Struct_3(arg_1.a), !all(!vec2<bool>(false, arg_2)), arg_1, countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global0.b.a, global0.e.a, 4294967295u), ~vec4<u32>(4294967295u, 18138u, 8972u, global0.b.a)))).e);
    global0 = Struct_2(arg_0.a, Struct_1(52314u, arg_0.e.b, _wgslsmith_f_op_f32(abs(-1510f))), global0.c, -_wgslsmith_mod_i32(i32(-1i) * -12141i, _wgslsmith_add_i32(~(-39832i), global3[_wgslsmith_index_u32(var_1.d.x, 30u)] >> (var_1.d.x % 32u))), var_1.e);
    var var_2 = global0.e;
    var_1 = Struct_4(func_1(Struct_3(arg_0.d), true, arg_1, _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_1.e.a, arg_0.b.a, var_1.a.a, global0.b.a) & vec4<u32>(u_input.b.x, var_1.b.e.a, 4294967295u, 54931u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.a, global0.e.a, 4884u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.e.a, 18581u, 159u, 41091u), vec4<u32>(4294967295u, 1u, 0u, 20055u))))).b, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.a))), Struct_1(14566u, false, var_2.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, 504f))))), select(-_wgslsmith_div_i32(1i, 40396i), var_1.c.d, true), Struct_1(_wgslsmith_mult_u32(0u, ~var_2.a), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.c - 800f))))), func_1(Struct_3(arg_0.d), arg_2, arg_1, vec4<u32>(~(~0u), global0.e.a ^ var_2.a, var_2.a, 0u)), u_input.b.zx, Struct_1(11471u, (global0.e.a << (1u % 32u)) <= arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)) + var_2.c)));
    return Struct_1(global0.e.a, func_3(Struct_5(vec2<u32>(~var_1.d.x, 35137u)), Struct_4(Struct_1(u_input.a, arg_2, _wgslsmith_f_op_f32(global0.c.x + 304f)), Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], 679f), Struct_1(33850u, true, global0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, 129f)), arg_1.a, func_1(arg_1, arg_0.b.b, Struct_3(var_1.c.d), vec4<u32>(u_input.a, 1u, 2313u, arg_0.e.a)).e), Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(821f, var_2.c))), func_1(Struct_3(1i), true, Struct_3(-28189i), vec4<u32>(var_2.a, 48740u, var_2.a, var_2.a)).b, _wgslsmith_f_op_vec2_f32(-global0.c), global3[_wgslsmith_index_u32(0u, 30u)] | -59444i, func_1(Struct_3(var_1.b.d), arg_0.e.b, arg_1, vec4<u32>(43562u, 1u, 42980u, 8539u)).b), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a, 0u)), countOneBits(vec2<u32>(arg_0.e.a, 1294u)), ~var_1.d), global0.e), arg_1).x, _wgslsmith_f_op_f32(-arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(select(vec4<bool>(true, global0.b.b, global0.b.b, false), vec4<bool>(true, true, global0.b.b, false), true), select(vec4<bool>(global0.e.b, true, true, false), vec4<bool>(global0.b.b, global0.e.b, global0.e.b, global0.e.b), vec4<bool>(false, true, true, global0.e.b)), !global0.b.b), !select(vec4<bool>(global0.b.b, true, global0.e.b, true), vec4<bool>(true, false, global0.e.b, global0.b.b), global0.e.b), global0.b.b), vec4<bool>(true, !any(vec3<bool>(global0.b.b, global0.b.b, true)), ~(-1i) <= (1i << (global0.e.a % 32u)), global0.e.b), !(!all(vec3<bool>(false, true, false))));
    let var_1 = global0.e;
    global1 = _wgslsmith_add_u32(~max(0u, ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 3779u);
    global1 = global0.b.a;
    let var_2 = global0.e;
    let var_3 = Struct_2(vec2<f32>(1000f, global2[_wgslsmith_index_u32(36692u, 23u)]), global0.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.c) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c), _wgslsmith_f_op_vec2_f32(ceil(global0.a)))), 738i, global0.e);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3019f, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(25444u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)])))), global0.c)), func_5(func_1(Struct_3(global3[_wgslsmith_index_u32(~4294967295u, 30u)]), any(var_0.yz), Struct_3(global3[_wgslsmith_index_u32(~global0.e.a, 30u)]), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 1u, 4294967295u, var_3.e.a), vec4<u32>(global0.e.a, var_1.a, 4294967295u, var_3.b.a)), vec4<u32>(0u, var_1.a, global0.e.a, 4294967295u) | vec4<u32>(1u, var_1.a, 30218u, 50967u))), Struct_3(18581i), !(!all(vec3<bool>(true, var_0.x, var_3.e.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_3.c, _wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(-1410f, global0.e.c)))))), _wgslsmith_mult_i32(-(~global0.d), abs(0i)), var_3.e);
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-267f)), 591f))), var_3.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~0u, 23u)], -144f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(814f, -246f)))), global3[_wgslsmith_index_u32(4294967295u, 30u)], func_5(var_3, Struct_3(countOneBits(0i)), !var_3.e.b));
    var var_5 = _wgslsmith_f_op_f32(-320f + global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b | u_input.b), 8404i, -countOneBits(func_2(u_input.b.xz, vec2<i32>(28013i, 25199i), var_3.b).zwy >> (~vec3<u32>(var_4.b.a, 11507u, 40253u) % vec3<u32>(32u))), vec4<u32>(~55786u, _wgslsmith_div_u32(3767u, global0.b.a), var_2.a & ~global0.b.a, 15933u));
}

