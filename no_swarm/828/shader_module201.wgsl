struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(2147483647i, vec2<bool>(true, true), 438f, 47658u, 116315i), Struct_1(1i, vec2<bool>(true, false), 394f, 21818u, 22712i), Struct_1(37418i, vec2<bool>(false, true), 293f, 30977u, 62990i))), Struct_3(Struct_2(Struct_1(27341i, vec2<bool>(false, false), 351f, 0u, 43872i), Struct_1(i32(-2147483648), vec2<bool>(false, true), -898f, 4294967295u, -25175i), Struct_1(-11600i, vec2<bool>(false, true), 118f, 11655u, 42387i))), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, false), -1206f, 4294967295u, -1736i), Struct_1(13204i, vec2<bool>(false, true), -1000f, 4294967295u, 2147483647i), Struct_1(-29489i, vec2<bool>(true, false), 210f, 2265u, -54078i))), Struct_3(Struct_2(Struct_1(2147483647i, vec2<bool>(true, false), 1108f, 60205u, 0i), Struct_1(0i, vec2<bool>(true, false), 547f, 0u, 0i), Struct_1(25013i, vec2<bool>(true, true), -923f, 46283u, 35674i))), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, false), 956f, 42571u, 1i), Struct_1(15588i, vec2<bool>(false, false), -296f, 10593u, 1i), Struct_1(-1i, vec2<bool>(true, true), 727f, 1u, 0i))), Struct_3(Struct_2(Struct_1(0i, vec2<bool>(false, false), -1016f, 4294967295u, 1i), Struct_1(i32(-2147483648), vec2<bool>(true, false), -699f, 1u, 2147483647i), Struct_1(6577i, vec2<bool>(true, true), 973f, 0u, 0i))));

var<private> global3: vec3<f32>;

var<private> global4: i32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = !arg_0.a.c.b.x;
    let var_1 = Struct_3(Struct_2(arg_0.a.b, Struct_1(arg_0.a.c.a, vec2<bool>(true, any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))), _wgslsmith_f_op_f32(-arg_0.a.a.c), arg_0.a.c.d, countOneBits(1i) ^ arg_0.a.a.a), Struct_1(min(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_0.a.b.a, arg_0.a.c.a, -21900i)), arg_0.a.c.a), vec2<bool>(!arg_0.a.a.b.x, !arg_0.a.b.b.x), _wgslsmith_f_op_f32(abs(arg_0.a.a.c)), arg_0.a.a.d | arg_0.a.a.d, -22240i)));
    global0 = array<bool, 23>();
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global3.x, var_1.a.b.b.x)) + _wgslsmith_f_op_f32(var_1.a.a.c - -646f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))));
    return select(!arg_0.a.a.b, arg_0.a.a.b, arg_0.a.b.b.x | !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62774u, arg_0.a.c.d), u_input.a.xz), firstTrailingBit(1u)), 23u)]);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = select(select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, true))), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 23u)]), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_3, 23u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_3, 23u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(35511u, 23u)], false)), vec3<bool>(true, true, true), false), true), vec3<bool>(_wgslsmith_add_i32(arg_1.x, u_input.b.x) > 0i, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], true))), false)), !(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 23u)]))), select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(17534u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(arg_3, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(arg_3, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)]))), vec3<bool>(true, !global0[_wgslsmith_index_u32(435u, 23u)] && true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(348u, 23u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.x, 23u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(5834u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    return Struct_2(Struct_1(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_mult_i32(reverseBits(arg_1.x), max(u_input.d.x, arg_2))), var_0.xy, global3.x, ~abs(1u), ~18730i), Struct_1(u_input.d.x, select(func_3(global2[_wgslsmith_index_u32(arg_0.x, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 23u)], false), global0[_wgslsmith_index_u32(min(~arg_3, ~arg_3), 23u)]), -653f, firstLeadingBit(91562u), ~(i32(-1i) * -1i)), Struct_1(arg_1.x, var_0.zx, _wgslsmith_f_op_f32(-global3.x), abs(~1u) >> (firstLeadingBit(arg_3) % 32u), u_input.d.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.b, select(vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c), firstLeadingBit(1i)), min(u_input.d.zx, firstLeadingBit(vec2<i32>(8632i, arg_1.b.a))), global0[_wgslsmith_index_u32(~(~arg_1.b.d), 23u)]) >> (countOneBits(~u_input.a.wy << (firstTrailingBit(vec2<u32>(12914u, arg_1.b.d)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = i32(-1i) * -13971i;
    var var_2 = arg_1;
    let var_3 = ~u_input.d.xz ^ _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(1i, _wgslsmith_clamp_i32(1i, 11295i, -2147483647i)), reverseBits(u_input.b));
    var var_4 = func_2(u_input.a, firstLeadingBit(u_input.b), reverseBits(38987i), reverseBits(countOneBits(8930u))).b;
    return reverseBits(~countOneBits(vec4<u32>(var_4.d, ~var_4.d, var_2.b.d | arg_1.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_2.c.d), vec3<u32>(var_4.d, u_input.a.x, u_input.a.x)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_5 {
    var var_0 = ~(~func_4(~select(-1i, u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), func_2(~u_input.a, ~u_input.b, u_input.b.x, 1u)));
    let var_1 = _wgslsmith_add_vec2_u32(var_0.zz, var_0.zy);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -449f));
    global4 = _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32((u_input.c >> (0u % 32u)) & u_input.c, 0i)), _wgslsmith_div_i32(u_input.d.x >> (59707u % 32u), u_input.b.x));
    let var_3 = ~_wgslsmith_sub_vec2_i32(u_input.d.zz, ~_wgslsmith_clamp_vec2_i32(~u_input.d.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(171i, u_input.c), vec2<i32>(u_input.c, 0i)), vec2<i32>(2147483647i, -1i)));
    return Struct_5(global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, -539f, _wgslsmith_f_op_f32(trunc(-514f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -442f, arg_0.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * arg_0)))), global0[_wgslsmith_index_u32(~26289u, 23u)], -(~min(~vec4<i32>(-27383i, var_3.x, var_3.x, u_input.b.x), ~vec4<i32>(60940i, -7860i, u_input.b.x, u_input.b.x))), ~(vec2<u32>(var_0.x, 58653u) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 40027u), _wgslsmith_div_vec2_u32(u_input.a.wx, vec2<u32>(arg_1, 36534u)))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(89081u, 75594u, u_input.a.x), ~firstTrailingBit(vec3<u32>(15651u, u_input.a.x, 4294967295u))), vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3.e.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u)) ^ ~2427u)), vec3<u32>(50558u, u_input.a.x, firstTrailingBit(28608u) << (arg_3.a.a.b.d % 32u)));
    global4 = _wgslsmith_clamp_i32(48960i, abs(u_input.d.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(arg_3.d.x), arg_2) ^ u_input.c, max(-_wgslsmith_clamp_i32(1i, arg_3.a.a.b.a, 21671i), ~1i)));
    return Struct_3(arg_3.a.a);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: u32) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(u_input.d), max(select(vec3<i32>(u_input.c, -27100i, u_input.d.x), vec3<i32>(6071i, 0i, arg_0.a.a.a), vec3<bool>(true, true, arg_0.a.a.b.x)), vec3<i32>(arg_0.a.a.a, 1i, u_input.d.x) ^ vec3<i32>(14454i, arg_0.a.a.e, -2147483647i))), ~(-1i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(91282u, 22299u, u_input.a.x, 0u), vec4<u32>(0u, 40805u, u_input.a.x, 4294967295u)), u_input.a << (vec4<u32>(arg_0.a.b.d, 0u, u_input.a.x, arg_3) % vec4<u32>(32u))) % 32u), u_input.d.x), global2[_wgslsmith_index_u32(func_2(u_input.a, u_input.d.zy, arg_0.a.b.e, reverseBits(_wgslsmith_mult_u32(16907u, ~arg_3))).a.d, 6u)], arg_0.a);
    var var_1 = Struct_2(arg_0.a.b, Struct_1(-firstLeadingBit(-2147483647i), func_2(vec4<u32>(~1u, func_5(true, var_0.c.a.b.a, 18048i, Struct_5(var_0.c, vec4<f32>(1000f, 1123f, 371f, global3.x), arg_0.a.b.b.x, vec4<i32>(u_input.b.x, var_0.d.b.e, -9654i, u_input.b.x), vec2<u32>(4294967295u, arg_1))).a.c.d, arg_0.a.a.d, _wgslsmith_div_u32(var_0.d.a.d, 1u)), var_0.b.xx, func_5(var_0.d.b.b.x, -61946i, var_0.b.x, Struct_5(global2[_wgslsmith_index_u32(4294967295u, 6u)], vec4<f32>(1401f, 167f, global3.x, global3.x), true, vec4<i32>(-2147483647i, -51718i, arg_0.a.c.a, 1i), u_input.a.zx)).a.a.e >> (u_input.a.x % 32u), 51210u).a.b, _wgslsmith_f_op_f32(f32(-1f) * -894f), arg_3, var_0.d.a.e), func_5(func_2(u_input.a, var_0.b.zz & (u_input.b | u_input.d.xy), ~0i, arg_3).c.b.x, arg_0.a.a.a, 0i, Struct_5(Struct_3(var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(928f, arg_2.x, var_0.d.c.c, arg_2.x)))), true, vec4<i32>(1i, 1i, 1i, 1i) & min(vec4<i32>(var_0.b.x, -2147483647i, 23036i, 38129i), vec4<i32>(49374i, 11758i, arg_0.a.b.e, -39166i)), vec2<u32>(var_0.c.a.a.d, _wgslsmith_clamp_u32(arg_0.a.a.d, u_input.a.x, u_input.a.x)))).a.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c.c - _wgslsmith_div_f32(1528f, 1000f)), _wgslsmith_f_op_f32(ceil(arg_0.a.a.c)), var_1.a.c) + var_0.a);
    global2 = array<Struct_3, 6>();
    global1 = -min(2147483647i | u_input.c, -37366i);
    return StorageBuffer(arg_0.a.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f)), vec4<i32>(u_input.c, _wgslsmith_add_i32(u_input.c ^ 1i, -20121i), -1i, arg_0.a.b.e | arg_0.a.a.e), _wgslsmith_dot_vec2_i32(abs(u_input.d.yy), countOneBits(vec2<i32>(2147483647i, var_1.b.e << (arg_3 % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1588f, -161f, global3.x, 1425f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, 1000f, 318f, global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1000f, -418f, -262f)))) + vec4<f32>(global3.x, _wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f - global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(741f + _wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))))));
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = func_6(func_5(true, _wgslsmith_mult_i32(-35801i, firstTrailingBit(u_input.c) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(94298u, 55630u, 46916u, 0u)) % 32u)), -u_input.b.x, func_1(_wgslsmith_f_op_vec4_f32(-var_0), u_input.a.x)), (firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 4294967295u)) | countOneBits(abs(u_input.a.x))) ^ ~(~(0u >> (u_input.a.x % 32u))), var_0.xzy, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x & (u_input.a.x ^ 1u), u_input.a.x));
}

