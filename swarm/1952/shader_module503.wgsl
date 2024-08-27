struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<u32, 9> = array<u32, 9>(4454u, 1u, 91990u, 89648u, 12838u, 0u, 0u, 5823u, 0u);

var<private> global2: array<bool, 14>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)] & min(~(~global3.e), _wgslsmith_add_u32(u_input.b.x, 1u ^ global3.e)), 14u)], ~u_input.b.x <= 37461u, !global2[_wgslsmith_index_u32(1u & ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 9u)], 9u)], arg_0), 14u)]);
    var var_1 = arg_1;
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-752f)))) * _wgslsmith_f_op_f32(-global3.c)), any(vec3<bool>(arg_1, false, var_0.x)) || true))));
    let var_4 = ~(~select(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, global3.d), arg_0), 1u, false));
    return global1[_wgslsmith_index_u32(u_input.d, 9u)] & u_input.b.x;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<u32>(func_3(u_input.c, global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~70756u, _wgslsmith_mult_u32(u_input.c, 18848u)), _wgslsmith_mod_u32(47478u, u_input.c)), 14u)]), ~14465u, arg_1.x);
    global3 = Struct_1(_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 9u)], ~firstLeadingBit(24867u))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -13773i, _wgslsmith_mult_i32(u_input.a, 1i), firstLeadingBit(u_input.a))), (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 3030i, u_input.a, u_input.a), vec4<i32>(664i, u_input.a, 30033i, global3.b)) << (vec4<u32>(40116u, 4294967295u, 38944u, 1u) % vec4<u32>(32u))) >> (~_wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(4294967295u, 103081u, 9566u, global3.d), vec4<u32>(0u, 35792u, 6959u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 10u)], 10u)])) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(1295f)), u_input.c, 30951u);
    var var_1 = Struct_1(~var_0, _wgslsmith_sub_i32(2147483647i, max(-3867i, global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-149f))), _wgslsmith_dot_vec3_u32(var_0, global3.a), ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 17438u), vec3<u32>(3163u, arg_1.x, 25540u), vec3<u32>(49214u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 9u)], 9u)], 9u)], var_0.x)))));
    var var_2 = Struct_1(abs(global3.a), ~min(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b, -14771i, u_input.a), -vec3<i32>(global3.b, 2147483647i, -10338i)), reverseBits(firstLeadingBit(var_1.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-global3.c)))), firstTrailingBit(global3.e), 68789u);
    var var_3 = ~abs(-vec4<i32>(max(-14271i, 2147483647i), var_1.b, var_2.b, ~(-1i)));
    return ~(~arg_1.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 69532u, 1569u), var_2.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, var_2.a.x), vec3<u32>(global1[_wgslsmith_index_u32(33235u, 9u)], var_1.a.x, var_2.e)), firstLeadingBit(vec3<u32>(var_2.a.x, 1u, 53836u)))), arg_1.zxx) % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = abs(-vec2<i32>(-1i, min(max(arg_0.x, u_input.a), -2147483647i)));
    let var_1 = (vec4<u32>(~32612u, arg_2.x, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(1u, 9u)], countOneBits(45040u)), arg_2.x | ~1u) << (min(vec4<u32>(func_3(0u, true), _wgslsmith_mod_u32(34640u, arg_2.x), func_2(179f, vec4<u32>(arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(41091u, 10u)], arg_2.x)), global3.d | 0u), vec4<u32>(~global0[_wgslsmith_index_u32(968u, 10u)], _wgslsmith_sub_u32(arg_2.x, 4294967295u), select(arg_2.x, arg_2.x, arg_3.x), arg_2.x)) % vec4<u32>(32u))) | ~firstLeadingBit(reverseBits(~vec4<u32>(15419u, 12270u, u_input.c, 25254u)));
    var_0 = abs(vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global3.b, arg_0.x), vec2<i32>(2147483647i, -1i)), vec2<i32>(-26492i, u_input.a))), countOneBits(u_input.a)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(34673u, 0u, global1[_wgslsmith_index_u32(4294967295u, 9u)], var_1.x), var_1)), vec4<u32>(global3.a.x << (global1[_wgslsmith_index_u32(arg_2.x, 9u)] % 32u), _wgslsmith_dot_vec4_u32(var_1, var_1), u_input.b.x, var_1.x)), u_input.c, func_3(4294967295u, all(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2.x, 14u)], global2[_wgslsmith_index_u32(33263u, 14u)]), arg_3.yx, vec2<bool>(true, false))))), select(~(~(~vec4<u32>(u_input.c, global3.d, var_1.x, 1u))), vec4<u32>(0u, 16688u, ~var_1.x, 9193u), global3.b != -(~(-57509i))), var_1 & _wgslsmith_sub_vec4_u32((vec4<u32>(0u, var_1.x, 0u, 56817u) | vec4<u32>(global0[_wgslsmith_index_u32(var_1.x, 10u)], 8149u, 24434u, u_input.c)) ^ var_1, var_1));
    return Struct_1(vec3<u32>(1u, ~global3.d, u_input.b.x), ~(-(~arg_0.x >> (firstTrailingBit(11002u) % 32u))), 744f, ~var_1.x | func_2(_wgslsmith_f_op_f32(trunc(var_2)), vec4<u32>(23790u << (global1[_wgslsmith_index_u32(1u, 9u)] % 32u), ~4294967295u, var_3.x << (46548u % 32u), min(0u, 4294967295u))), 48814u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global3 = Struct_1(vec3<u32>(global3.d, global1[_wgslsmith_index_u32(13288u, 9u)], arg_1.a.x), -(arg_0.b >> (firstLeadingBit(37451u) % 32u)), arg_2, ~83227u, ~1u);
    global1 = array<u32, 9>();
    global3 = Struct_1(~vec3<u32>(_wgslsmith_div_u32(~4419u, global3.d), global0[_wgslsmith_index_u32(~1u, 10u)], ~(~32664u)), arg_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), 836f)), min(~27346u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], arg_1.d, 4294967295u) >> (vec3<u32>(1u, global0[_wgslsmith_index_u32(10365u, 10u)], global3.e) % vec3<u32>(32u))), arg_0.a)), ~1u);
    let var_0 = global3.a.zx;
    var var_1 = func_4((abs(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.b, -2147483647i), vec2<i32>(arg_0.b, arg_1.b))) | ~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_0.b), vec2<i32>(0i, -33412i))) | ~min(vec2<i32>(arg_0.b, -14606i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i))), 1406f, vec3<u32>(countOneBits(~0u), ~1137u, arg_1.d) << (arg_1.a % vec3<u32>(32u)), !(!vec3<bool>(!global2[_wgslsmith_index_u32(arg_0.e, 14u)], global2[_wgslsmith_index_u32(arg_0.e, 14u)], global2[_wgslsmith_index_u32(~arg_1.a.x, 14u)])));
    return func_4(-firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i) << (vec2<u32>(132790u, arg_0.a.x) % vec2<u32>(32u)), vec2<i32>(var_1.b, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + arg_2))))), vec3<u32>(63055u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.d, var_1.d >> (var_0.x % 32u)), 9u)] ^ ~reverseBits(33363u), 1u), !(!vec3<bool>(true, !global2[_wgslsmith_index_u32(var_0.x, 14u)], false)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-440f * arg_0.c))))), _wgslsmith_f_op_f32(ceil(arg_1))));
    var var_1 = u_input.a;
    var_1 = 0i;
    let var_2 = all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101322u, 9u)], 14u)], global2[_wgslsmith_index_u32(54177u, 14u)], false))), vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~74985u, 10u)], 14u)], all(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 14u)], global2[_wgslsmith_index_u32(1u, 14u)], true))))) | !(45072i > func_5(func_4(vec2<i32>(-10065i, -2147483647i), arg_0.c, global3.a, vec3<bool>(global2[_wgslsmith_index_u32(global3.e, 14u)], global2[_wgslsmith_index_u32(arg_2.x, 14u)], global2[_wgslsmith_index_u32(arg_2.x, 14u)])), Struct_1(vec3<u32>(u_input.b.x, 0u, 0u), 40041i, 574f, 28424u, global1[_wgslsmith_index_u32(u_input.d, 9u)]), _wgslsmith_f_op_f32(-var_0.x)).b);
    global0 = array<u32, 10>();
    return Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(2062u, global0[_wgslsmith_index_u32(global3.a.x, 10u)], 20632u)), ~arg_0.a), ~min(vec3<u32>(arg_0.e, arg_0.e, 21258u) | vec3<u32>(11220u, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], arg_0.e), vec3<u32>(arg_0.a.x, global0[_wgslsmith_index_u32(11620u, 10u)], 35088u))), arg_0.b, _wgslsmith_f_op_f32(round(var_0.x)), ~reverseBits((arg_0.d & arg_2.x) & 0u), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(63976u, global1[_wgslsmith_index_u32(u_input.c, 9u)]), func_4(vec2<i32>(-2147483647i, u_input.a), 519f, vec3<u32>(22921u, 12236u, global3.e), vec3<bool>(true, true, var_2)).d, 0u), 0u), 10u)]);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = func_6(func_5(func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0, arg_0), abs(2147483647i)), _wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(f32(-1f) * -1788f)), abs(_wgslsmith_clamp_vec3_u32(arg_1.a, vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(8008u, 10u)], 0u), arg_3.a)), vec3<bool>(global2[_wgslsmith_index_u32(~arg_2.x, 14u)], global2[_wgslsmith_index_u32(func_2(-1000f, vec4<u32>(arg_2.x, global3.e, 26859u, arg_3.e)), 14u)], arg_3.d != global1[_wgslsmith_index_u32(48505u, 9u)])), arg_1, arg_1.c), _wgslsmith_f_op_f32(1633f * _wgslsmith_f_op_f32(ceil(arg_1.c))), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(global0[_wgslsmith_index_u32(9085u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], arg_3.e))), u_input.d, _wgslsmith_mod_u32(func_5(Struct_1(vec3<u32>(arg_2.x, arg_2.x, global1[_wgslsmith_index_u32(4294967295u, 9u)]), -1i, -793f, arg_1.a.x, 1u), Struct_1(arg_3.a, -2147483647i, arg_3.c, 11487u, arg_2.x), 221f).d, _wgslsmith_div_u32(arg_1.e, 59988u)), ~(~global3.a.x)) & vec4<u32>(~_wgslsmith_mult_u32(20239u, 37054u), ~0u, _wgslsmith_add_u32(1u, 1u), 1u));
    let var_1 = func_5(arg_1, Struct_1(var_0.a, countOneBits(arg_1.b), global3.c, var_0.a.x, ~_wgslsmith_mod_u32(~28827u, arg_3.d)), 1497f);
    let var_2 = vec4<bool>(false, !all(select(!vec4<bool>(global2[_wgslsmith_index_u32(17977u, 14u)], global2[_wgslsmith_index_u32(90890u, 14u)], global2[_wgslsmith_index_u32(44805u, 14u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 10u)], 14u)]), vec4<bool>(global2[_wgslsmith_index_u32(5883u, 14u)], true, global2[_wgslsmith_index_u32(55397u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_0.a.x, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(51241u, 14u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 14u)], global2[_wgslsmith_index_u32(84908u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)])))), global2[_wgslsmith_index_u32(func_4(arg_0, _wgslsmith_f_op_f32(step(-1000f, -442f)), ~arg_2, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.d, 14u)]), global2[_wgslsmith_index_u32(39727u, 14u)])).d << (~global3.d % 32u), 14u)], !(!(func_4(arg_0, -882f, vec3<u32>(1u, var_0.a.x, 11745u), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 14u)], true, false)).b < -2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(959f)) * _wgslsmith_f_op_f32(func_6(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-568f)), arg_1.c, arg_1.c <= -1479f)), vec4<u32>(func_2(var_0.c, vec4<u32>(arg_3.d, global3.d, 95845u, global1[_wgslsmith_index_u32(global3.a.x, 9u)])), _wgslsmith_sub_u32(arg_2.x, 1u), 0u, 1u & arg_3.d)).c * 969f));
    var var_4 = !(true && ((var_1.b >= (i32(-1i) * -1i)) && true));
    return vec4<u32>(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 9u)], 9u)], 10u)]), 40825u), ~4294967295u) ^ _wgslsmith_div_u32(u_input.c, reverseBits(global1[_wgslsmith_index_u32(51436u | arg_3.d, 9u)])), 1u, ~(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 10u)] >> (var_1.a.x % 32u)), arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    var var_0 = vec4<bool>(false, !all(vec2<bool>(-1334f != global3.c, false)), !(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, global0[_wgslsmith_index_u32(56328u, 10u)], global1[_wgslsmith_index_u32(39059u, 9u)]), func_1(vec2<i32>(global3.b, -1i), Struct_1(global3.a, 47818i, global3.c, u_input.b.x, global3.e), vec3<u32>(global1[_wgslsmith_index_u32(115270u, 9u)], global0[_wgslsmith_index_u32(global3.e, 10u)], u_input.c), Struct_1(global3.a, 1i, 842f, 30950u, 28996u))), 14u)] || select(global2[_wgslsmith_index_u32(u_input.c, 14u)] || global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8364u, 9u)], 14u)], global3.a.x < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46347u, 9u)], 9u)], global2[_wgslsmith_index_u32(~0u, 14u)])), any(!select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 14u)]), !vec3<bool>(global2[_wgslsmith_index_u32(39557u, 14u)], global2[_wgslsmith_index_u32(global3.d, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), select(global2[_wgslsmith_index_u32(u_input.d, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], false))));
    let var_1 = _wgslsmith_clamp_vec2_u32(~select(~vec2<u32>(global0[_wgslsmith_index_u32(18730u, 10u)], u_input.d), vec2<u32>(global3.e, 1u) | u_input.b, true), global3.a.yz, vec2<u32>(global0[_wgslsmith_index_u32(~27916u, 10u)], 0u));
    global1 = array<u32, 9>();
    global3 = func_4(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b, -9679i), _wgslsmith_sub_vec2_i32(vec2<i32>(-4850i, u_input.a), vec2<i32>(-37127i, 0i)), ~vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(~global3.b, ~50030i)), global3.c, func_6(func_6(Struct_1(global3.a, ~u_input.a, _wgslsmith_f_op_f32(-global3.c), ~global1[_wgslsmith_index_u32(4294967295u, 9u)], min(4294967295u, u_input.c)), _wgslsmith_f_op_f32(150f + 280f), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, global0[_wgslsmith_index_u32(1272u, 10u)], var_1.x, 66354u), _wgslsmith_div_vec4_u32(vec4<u32>(26454u, var_1.x, global3.e, 32680u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 10u)], 12341u, 16810u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])))), _wgslsmith_f_op_f32(sign(func_5(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(13844u, 10u)], u_input.b.x, 0u), 8720i, 318f, u_input.d, 50105u), func_5(Struct_1(global3.a, 31148i, 2366f, 1u, 1u), Struct_1(global3.a, global3.b, global3.c, u_input.d, u_input.c), global3.c), _wgslsmith_f_op_f32(abs(global3.c))).c)), ~vec4<u32>(_wgslsmith_sub_u32(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 9u)]), 4294967295u, _wgslsmith_div_u32(47567u, global3.e), var_1.x)).a, !select(!var_0.wwx, vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global1 = array<u32, 9>();
    var var_2 = func_6(func_5(func_5(func_4(vec2<i32>(-40420i, global3.b), _wgslsmith_f_op_f32(-666f - 1037f), vec3<u32>(0u, var_1.x, 88799u), !var_0.wxz), Struct_1(func_1(vec2<i32>(2147483647i, u_input.a), Struct_1(global3.a, -19447i, global3.c, u_input.d, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 10u)]), global3.a, Struct_1(vec3<u32>(global3.e, 20524u, 73573u), global3.b, 625f, var_1.x, 25939u)).wxz, -global3.b, global3.c, ~global3.e, global3.a.x), _wgslsmith_f_op_f32(-global3.c)), func_6(Struct_1(abs(vec3<u32>(43501u, global3.e, global0[_wgslsmith_index_u32(1u, 10u)])), -34953i & u_input.a, -327f, 0u, 4294967295u), _wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(global3.c - -1000f)), firstLeadingBit(abs(vec4<u32>(2033u, global1[_wgslsmith_index_u32(73292u, 9u)], global0[_wgslsmith_index_u32(79552u, 10u)], var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f + global3.c) * _wgslsmith_div_f32(-358f, global3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(abs(1725f)))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.c, global0[_wgslsmith_index_u32(1211u, 10u)] >> (5149u % 32u)), _wgslsmith_mult_u32(firstLeadingBit(var_1.x), func_2(global3.c, vec4<u32>(global3.a.x, global3.d, u_input.c, 1u)))), 1u, abs(~_wgslsmith_add_u32(var_1.x, global0[_wgslsmith_index_u32(global3.d, 10u)])), global3.a.x));
    var_2 = func_6(func_5(func_4(countOneBits(vec2<i32>(global3.b, -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(101f - 1000f))), _wgslsmith_mult_vec3_u32(select(var_2.a, vec3<u32>(global3.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 13456u), vec3<bool>(var_0.x, var_0.x, true)), firstTrailingBit(vec3<u32>(1190u, 63305u, global1[_wgslsmith_index_u32(var_1.x, 9u)]))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], false, global2[_wgslsmith_index_u32(39771u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], true, false), var_0.x), !var_0.xwx, !vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 14u)], var_0.x, true))), Struct_1(global3.a, -33953i, func_6(func_4(vec2<i32>(-10479i, u_input.a), var_2.c, var_2.a, vec3<bool>(false, var_0.x, true)), 1000f, min(vec4<u32>(1u, 0u, global3.a.x, 1u), vec4<u32>(4294967295u, var_1.x, global3.a.x, var_1.x))).c, reverseBits(4294967295u), ~firstLeadingBit(var_1.x)), -1032f), 1453f, ~(~max(max(vec4<u32>(global1[_wgslsmith_index_u32(77469u, 9u)], 0u, 28814u, var_2.d), vec4<u32>(global3.a.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], global3.d, 0u)), func_1(vec2<i32>(32331i, 2147483647i), Struct_1(vec3<u32>(var_2.a.x, 55833u, global0[_wgslsmith_index_u32(79118u, 10u)]), global3.b, 464f, var_1.x, 10990u), global3.a, Struct_1(vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11029u, 10u)], 9u)], 9u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), -1i, -1000f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18027u, 9u)], 10u)], 4294967295u)))));
    let var_3 = ~min(vec3<i32>(0i, ~(-1i), reverseBits(_wgslsmith_clamp_i32(u_input.a, 17611i, -1i))), max(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.b, u_input.a, global3.b), countOneBits(vec3<i32>(14250i, u_input.a, var_2.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-1i, global3.b, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3, 7894u, 4519u);
}

