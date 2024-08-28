struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(57525u, 49978u, 27579u, 40146u), vec3<f32>(-165f, -597f, 1017f), 23643u, 24851u, -5970i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    var var_0 = (select(~vec4<i32>(arg_1, arg_1, 2147483647i, 0i), vec4<i32>(arg_1, u_input.c, -1i, 47549i) | -vec4<i32>(global0.e, arg_1, arg_1, arg_1), vec4<bool>(true, true, true, true)) ^ vec4<i32>(1i, 1i, (arg_1 >> (0u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(53239u, u_input.d, global0.a.x), vec3<u32>(u_input.d, global0.d, u_input.d)) % 32u), u_input.a)) ^ vec4<i32>(~(-arg_1 | (-21493i | u_input.c)), global0.e, u_input.a, 65610i);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(max(global0.c, 1u), firstLeadingBit(53906u)), 7867u, 0u, global0.a.x), vec4<u32>(reverseBits(global0.d), ~_wgslsmith_add_u32(0u, global0.d), 0u, min(u_input.d, global0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, global0.b) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1772f, arg_0.x)))))) * _wgslsmith_f_op_vec3_f32(floor(global0.b))), 2426u, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.a.wz, vec2<u32>(u_input.b, 1u) << (global0.a.zw % vec2<u32>(32u)), ~global0.a.xz), ~(~global0.a.zy))), u_input.c);
    var var_2 = Struct_1(abs(firstTrailingBit(var_1.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(global0.b.x, -667f)), global0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(2117f, global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(round(var_1.b.x)) >= 1036f)), 0u, var_1.a.x, 57307i);
    var_2 = Struct_1(global0.a, var_2.b, 21805u, var_1.a.x, u_input.a);
    var var_3 = var_1;
    return global0.a.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> vec3<i32> {
    var var_0 = vec2<i32>(global0.e, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, ~u_input.a), u_input.a)) << ((arg_2 << (vec2<u32>(11471u, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)), global0.e)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * -2125f), global0.b.x, 740f, global0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, global0.b.x, 149f, global0.b.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-555f - 1566f), _wgslsmith_div_f32(-605f, global0.b.x), _wgslsmith_f_op_f32(trunc(481f)), _wgslsmith_div_f32(-1194f, global0.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 1554f, 2029f) * vec4<f32>(1027f, global0.b.x, global0.b.x, -570f))))) * vec4<f32>(-1026f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-359f + global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -378f))), 292f, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-global0.b.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-918f)), _wgslsmith_f_op_f32(ceil(global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-235f, global0.b.x))) - global0.b.x)));
    global0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(global0.a.zyw, global0.a.xwx)), 19053u), _wgslsmith_mod_u32(~(~global0.c), 12146u), ~25400u, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(select(arg_2.x, 0u, false), abs(4294967295u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, var_2.x, 1323f) * vec3<f32>(var_1.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, 285f)))))), true)), arg_2.x, 8222u, max(firstTrailingBit(arg_1), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.e, arg_0, 1i)) & ~vec3<i32>(var_0.x, 20348i, global0.e), firstTrailingBit(vec3<i32>(global0.e, -15804i, arg_0) << (vec3<u32>(global0.c, 95035u, 0u) % vec3<u32>(32u))))));
    let var_3 = Struct_1(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 0u, arg_2.x, 150387u), global0.a >> (vec4<u32>(arg_3, global0.c, 29161u, 34190u) % vec4<u32>(32u)))), var_1.yww, _wgslsmith_dot_vec4_u32(select((vec4<u32>(arg_3, arg_2.x, 116053u, 4294967295u) ^ global0.a) << (global0.a % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(2593u, global0.a.x, arg_3, global0.c), vec4<u32>(4294967295u, global0.c, 17176u, 8662u))), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), var_0.x > arg_0, all(vec4<bool>(true, true, true, false)))), reverseBits(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(0u, 4294967295u, 70993u, arg_3)) | vec4<u32>(19516u, 0u, arg_2.x, arg_3))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, global0.c, 0u, 0u), global0.a, vec4<bool>(false, true, true, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 10415u, 4294967295u, 1u), global0.a)), global0.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(2147483647i, u_input.a, 34284i, -2110i)), vec4<i32>(_wgslsmith_mod_i32(var_0.x, 1i), arg_0, _wgslsmith_div_i32(u_input.a, 39287i), -2147483647i << (u_input.b % 32u))), u_input.c));
    return min(vec3<i32>(~51561i, _wgslsmith_mod_i32(1i, select(firstLeadingBit(global0.e), ~arg_0, true)), ~abs(1i)), select(abs(-(~vec3<i32>(-1815i, u_input.a, global0.e))), vec3<i32>(-28414i, -1i, -39188i), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = true;
    global0 = Struct_1(vec4<u32>(1u, _wgslsmith_add_u32(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_u32(global0.a.xw, vec2<u32>(56571u, 0u)) | 1u), _wgslsmith_dot_vec3_u32(global0.a.yzy, vec3<u32>(global0.c & 1u, ~1u, ~15138u)), global0.d), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.b.x))))), 1103f), u_input.b, ~4294967295u, ~_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(arg_0.yz, arg_0.yx), u_input.c) << (~(~(~global0.c)) % 32u));
    let var_1 = arg_0.xx;
    global0 = Struct_1(min(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 4294967295u, 6371u), ~vec4<u32>(16504u, u_input.b, 792u, u_input.d)), ~(~vec4<u32>(0u, 9329u, 1u, u_input.d))) << (global0.a % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, -1000f, arg_2), vec3<f32>(775f, global0.b.x, -583f), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))) - global0.b), ~firstTrailingBit(u_input.d), abs(5375u | u_input.d), arg_0.x);
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(global0.a, _wgslsmith_mult_vec4_u32(global0.a, global0.a) << (~vec4<u32>(43713u, 12264u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d >> (0u % 32u), func_3(global0.b.xz, -18227i), func_3(vec2<f32>(global0.b.x, 161f), 1i), firstLeadingBit(global0.a.x)), vec4<u32>(~u_input.b, countOneBits(4294967295u), 0u, global0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(arg_3, -951f, 614f), vec3<bool>(false, false, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(arg_3, 571f, arg_3))))), min(~_wgslsmith_mult_u32(u_input.d << (89970u % 32u), 4294967295u), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -739f)), _wgslsmith_add_i32(firstTrailingBit(global0.e), reverseBits(global0.e)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, reverseBits(global0.d), countOneBits(4294967295u), global0.d), global0.a), global0.e);
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, -1i), vec4<i32>(u_input.c, global0.e, u_input.a, 1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 1u), global0.a) % vec4<u32>(32u)), vec4<i32>(45171i, max(1i, -20665i), u_input.a << (u_input.d % 32u), _wgslsmith_sub_i32(u_input.c, u_input.a))), ~global0.a.xy, ~41589u), select(vec4<bool>(all(vec2<bool>(true, true)), true, true, select(all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true)), true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), any(vec3<bool>(true, false, false))), true), global0.b.x, _wgslsmith_f_op_f32(-global0.b.x));
    return Struct_1(~(~(~var_0.a & firstLeadingBit(vec4<u32>(u_input.b, 44537u, var_0.c, global0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + func_4(vec3<i32>(var_0.e, u_input.c, global0.e), vec4<bool>(true, false, false, false), -1544f, -1124f).b.x)), global0.b.x), 5554u | _wgslsmith_dot_vec3_u32(var_0.a.xzw, select(~vec3<u32>(var_0.a.x, 19722u, u_input.d), max(global0.a.yzy, global0.a.zyw), vec3<bool>(true, false, false))), 81423u, var_0.e);
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec4<f32>(_wgslsmith_div_f32(global0.b.x, 1015f), global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1342f) + _wgslsmith_f_op_f32(f32(-1f) * -988f)))), global0.a.x, func_1());
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(52379u, ~0u, max(1u, global0.d), u_input.d)), global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(-global0.b)))), 0u, _wgslsmith_mod_u32(u_input.d, ~(~_wgslsmith_mod_u32(global0.c, u_input.b))), -46084i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-118f * global0.b.x) - _wgslsmith_f_op_f32(-global0.b.x)));
    var var_1 = Struct_1((_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(32249u, global0.d, 1u, global0.c)), vec4<u32>(1u, 0u, 26160u, 53605u)) >> (global0.a % vec4<u32>(32u))) ^ ~(~global0.a), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - func_5(vec4<f32>(var_0, var_0, global0.b.x, global0.b.x), global0.a.x, Struct_1(vec4<u32>(u_input.b, u_input.d, 0u, 4294967295u), global0.b, 49875u, u_input.b, -11283i)).b.x), _wgslsmith_f_op_f32(1561f + _wgslsmith_f_op_f32(global0.b.x + global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * 512f), var_0)))), func_1().a.x, 1u, -2147483647i);
    var var_2 = global0.e;
    var_1 = Struct_1(vec4<u32>(global0.a.x, u_input.d, countOneBits(min(0u, 57625u)), 1u ^ ~var_1.a.x), global0.b, 50209u, 8449u, _wgslsmith_add_i32(u_input.a, -abs(9845i)));
    var var_3 = abs(min(min(~(~vec2<i32>(30904i, 2147483647i)), ~firstTrailingBit(vec2<i32>(-1i, u_input.a))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, var_1.e, -3902i, u_input.a), vec4<i32>(4662i, 2147483647i, 29022i, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(51268i, global0.e, 20530i), ~vec3<i32>(u_input.c, var_1.e, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, countOneBits(~var_1.a.x), _wgslsmith_f_op_f32(select(1185f, global0.b.x, true)), countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(global0.a.xx), ~var_1.a.yx), global0.a.wz, min(var_1.a.wz, vec2<u32>(4313u, 4956u)))), ~1u);
}

