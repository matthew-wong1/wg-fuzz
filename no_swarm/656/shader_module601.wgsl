struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 18962u, 8420u, 94773u, 7249u, 0u, 0u, 59757u, 1u, 20067u, 53412u, 47325u, 1u, 1u, 4294967295u, 45403u, 1u, 2413u, 44114u, 1u, 4294967295u, 19197u, 96561u, 4294967295u, 20991u, 1u, 40259u, 61530u, 4294967295u, 4294967295u);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<u32, 9> = array<u32, 9>(22233u, 16285u, 1u, 7622u, 45298u, 15906u, 31259u, 1u, 4294967295u);

var<private> global3: array<vec2<bool>, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = array<u32, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2177f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1319f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-122f, -1000f) + vec2<f32>(1000f, 276f)))))), global1.x, reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, -39525i, 37719i), max(-vec3<i32>(-1i, u_input.b.x, -6981i), ~vec3<i32>(u_input.c, 1i, u_input.d)))), ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)])), ~max(vec2<u32>(1u, global0[_wgslsmith_index_u32(59357u, 30u)]), vec2<u32>(0u, 74983u))));
    let var_1 = any(select(!vec2<bool>(any(vec2<bool>(var_0.c, false)), var_0.c), select(select(vec2<bool>(true, var_0.c), select(global1.yx, global3[_wgslsmith_index_u32(var_0.e.x, 27u)], true), var_0.c), !global1.xx, select(select(global3[_wgslsmith_index_u32(0u, 27u)], vec2<bool>(global1.x, true), vec2<bool>(true, var_0.c)), vec2<bool>(var_0.c, false), select(vec2<bool>(var_0.c, global1.x), global3[_wgslsmith_index_u32(var_0.e.x, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]))), (-1000f > _wgslsmith_f_op_f32(ceil(-429f))) | global1.x));
    var var_2 = _wgslsmith_mod_i32(-36893i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.e, u_input.d), _wgslsmith_mod_i32(u_input.b.x, u_input.e >> (0u % 32u)))) & -firstLeadingBit(u_input.d);
    global1 = select(!select(!select(vec4<bool>(var_1, false, true, false), vec4<bool>(true, global1.x, true, var_0.c), vec4<bool>(global1.x, false, var_1, true)), vec4<bool>(global1.x, true, true, var_1), any(!vec3<bool>(var_1, true, var_1))), vec4<bool>(true, (_wgslsmith_f_op_f32(floor(-626f)) == _wgslsmith_f_op_f32(var_0.b.x - 1501f)) || var_0.c, false, any(vec4<bool>(true, true, select(false, var_1, global1.x), var_0.c))), true);
    return var_0.a;
}

fn func_2() -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) - _wgslsmith_f_op_f32(abs(999f))) - 755f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(655f, 684f) + vec2<f32>(-1891f, -1000f))))), global1.x, firstTrailingBit(max(vec3<i32>(u_input.c, u_input.e, u_input.c), vec3<i32>(u_input.b.x, u_input.c, u_input.c))) >> ((reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 30u)], 14228u)) >> ((vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 9u)], 1u) ^ vec3<u32>(u_input.a, 4195u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<u32>(~42779u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 30u)], 9u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)], _wgslsmith_dot_vec2_u32(vec2<u32>(47517u, 0u), vec2<u32>(u_input.a, 6212u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-786f, -1284f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1418f, -1235f), vec2<f32>(-1369f, 1169f)))))), _wgslsmith_mult_u32(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 30u)], 21000u, 1079u), ~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(28798u, 30u)])), 80147u), global0[_wgslsmith_index_u32(select(firstTrailingBit(0u), 4294967295u, global1.x), 30u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(684f, _wgslsmith_f_op_f32(f32(-1f) * -2150f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1322f)) * _wgslsmith_f_op_f32(1000f + 1000f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.a.a, 393f, global1.x)), var_0.a.b, true, max(var_0.a.d, var_0.a.d ^ vec3<i32>(-49708i, -1i, 0i)), var_0.a.e);
    var var_2 = var_0.a.e.x;
    let var_3 = !global1.x;
    global2 = array<u32, 9>();
    return 1070f;
}

fn func_1() -> vec2<u32> {
    let var_0 = max(vec3<u32>(_wgslsmith_add_u32(~(~global2[_wgslsmith_index_u32(41811u, 9u)]), global0[_wgslsmith_index_u32(u_input.a, 30u)]), 35442u, ~(~global2[_wgslsmith_index_u32(1u, 9u)])), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 0u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 2094u, 4294967295u, global2[_wgslsmith_index_u32(10188u, 9u)]), vec4<u32>(0u, u_input.a, 4294967295u, global2[_wgslsmith_index_u32(33477u, 9u)]))) << (1u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)]) >> (vec2<u32>(2660u, global0[_wgslsmith_index_u32(4294967295u, 30u)]) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(479u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18336u, 30u)], 9u)], 9u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]))), vec2<u32>(reverseBits(4294967295u), global2[_wgslsmith_index_u32(abs(60388u), 9u)])), 9u)], global2[_wgslsmith_index_u32(~countOneBits(3130u), 9u)]));
    let var_1 = !vec4<bool>(all(vec4<bool>(true, u_input.b.x != 2147483647i, u_input.c > -2147483647i, true)), false, _wgslsmith_f_op_f32(856f * -945f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(623f))), all(!(!vec2<bool>(global1.x, global1.x))));
    global1 = var_1;
    let var_2 = Struct_4(Struct_3(Struct_1(-760f, vec2<f32>(1f, 1f), global1.x, vec3<i32>(u_input.c, -1i, ~12582i), reverseBits(_wgslsmith_mult_vec2_u32(var_0.xx, var_0.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(117f, 361f) - vec2<f32>(-366f, -146f)))), var_0.x & 17627u, vec2<f32>(1f, 1f)), _wgslsmith_add_vec3_i32((_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -27792i), vec3<i32>(u_input.d, u_input.d, u_input.e)) & (vec3<i32>(-2951i, -2147483647i, -8120i) ^ vec3<i32>(-1i, u_input.c, u_input.e))) << (countOneBits(var_0) % vec3<u32>(32u)), abs(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 11311i, 1i))), -38413i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f + 690f) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-2032f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1552f, 414f) + _wgslsmith_f_op_f32(ceil(543f)))))), u_input.e);
    var var_3 = firstLeadingBit(firstLeadingBit(~var_0));
    return var_2.a.a.e;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(-231f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, -623f) + vec2<f32>(314f, arg_1.a)), true)), global1.x, vec3<i32>(select(arg_0, arg_0, true), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -9246i, 13918i), vec3<i32>(arg_0, 28985i, u_input.e))), _wgslsmith_div_vec2_u32(arg_2, vec2<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(677f, arg_3), vec2<f32>(321f, 390f))))), 56683u | (arg_2.x >> (_wgslsmith_clamp_u32(21843u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 30u)], 30u)]) % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-557f, -160f), _wgslsmith_f_op_f32(449f * -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_1.a) + _wgslsmith_div_vec2_f32(vec2<f32>(-564f, -109f), vec2<f32>(arg_3, 102f))))), vec3<i32>(_wgslsmith_mod_i32(-41959i, countOneBits(arg_0)), 42823i, _wgslsmith_mult_i32(u_input.b.x, u_input.c | 0i)), select(arg_0, firstTrailingBit(_wgslsmith_mod_i32(0i, arg_0)), false) & arg_0, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_3) + arg_3), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_f32(func_2())))), u_input.c);
    global3 = array<vec2<bool>, 27>();
    let var_1 = select(select(!(!vec3<bool>(true, global1.x, false)), vec3<bool>(true & !var_0.a.a.c, true, all(vec3<bool>(false, var_0.a.a.c, true))), global1.yyw), !(!global1.wzx), false);
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(~global2[_wgslsmith_index_u32(4887u, 9u)], 40898u >> (var_0.a.c % 32u), global2[_wgslsmith_index_u32(min(0u, global0[_wgslsmith_index_u32(4294967295u, 30u)]), 9u)], countOneBits(30869u))), countOneBits(reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.a.e.x, 1u, u_input.a, global0[_wgslsmith_index_u32(arg_2.x, 30u)]), vec4<u32>(var_0.a.c, global0[_wgslsmith_index_u32(27985u, 30u)], 0u, 82538u)), countOneBits(vec4<u32>(arg_2.x, 0u, global2[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.c, 30u)], 30u)])), select(vec4<u32>(var_0.a.c, global2[_wgslsmith_index_u32(0u, 9u)], 1u, arg_2.x), vec4<u32>(var_0.a.c, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 9u)], 29805u, 2035u), var_0.a.a.c)))), max(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(51104u, 80058u, var_0.a.c, 9762u)), (vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 9u)], var_0.a.a.e.x) | vec4<u32>(global2[_wgslsmith_index_u32(arg_2.x, 9u)], 48734u, arg_2.x, var_0.a.c)) & vec4<u32>(u_input.a, u_input.a, arg_2.x, u_input.a)), max(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(var_0.a.a.e.x, 9u)], 1u, arg_2.x), vec4<u32>(14547u, 4294967295u, 6731u, 49648u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], 40016u, 0u, arg_2.x), vec4<u32>(global2[_wgslsmith_index_u32(0u, 9u)], u_input.a, 4294967295u, arg_2.x))), vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(22186u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), global2[_wgslsmith_index_u32(arg_2.x, 9u)] >> (67978u % 32u), abs(u_input.a), global0[_wgslsmith_index_u32(4294967295u, 30u)] ^ 24106u))));
    let var_3 = vec3<u32>(func_1().x, reverseBits(global2[_wgslsmith_index_u32(countOneBits(min(var_0.a.a.e.x, 0u)), 9u)]), select(func_1().x, 57999u, var_0.a.a.c == (max(1i, arg_0) == reverseBits(u_input.d))));
    return Struct_1(_wgslsmith_f_op_f32(step(776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-478f, arg_1.a)) * -140f) * var_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, arg_3)))), false && var_0.a.a.c, select(max(var_0.a.a.d, -var_0.a.a.d), vec3<i32>(u_input.d, 1i, _wgslsmith_sub_i32(var_0.a.a.d.x, min(2147483647i, -20840i))), -4389i > -_wgslsmith_mod_i32(arg_0, 63857i)), ~(~(~var_3.xz)) & (arg_2 >> (max(arg_2, arg_2) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 27>();
    var var_0 = Struct_3(func_4(23688i, Struct_2(-293f), ~func_1(), -1259f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1981f, -987f))), _wgslsmith_div_vec2_f32(vec2<f32>(-150f, 478f), vec2<f32>(-387f, -383f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, -748f))))), firstTrailingBit(~_wgslsmith_div_u32(105014u << (1u % 32u), ~global2[_wgslsmith_index_u32(u_input.a, 9u)])), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-794f - 690f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(159f, 1039f))), 1f));
    global0 = array<u32, 30>();
    global1 = select(select(vec4<bool>(!(!var_0.a.c), false, true, all(!global1.xyz)), select(!(!vec4<bool>(var_0.a.c, false, false, false)), vec4<bool>(global1.x != global1.x, global1.x, any(vec2<bool>(true, true)), false), !select(vec4<bool>(global1.x, true, var_0.a.c, false), vec4<bool>(true, true, global1.x, false), false)), var_0.a.c || all(vec4<bool>(var_0.a.c, global1.x, var_0.a.c, false))), select(select(!vec4<bool>(global1.x, true, true, global1.x), select(!vec4<bool>(var_0.a.c, var_0.a.c, global1.x, false), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, false, global1.x, false), var_0.a.c), !global1.x), vec4<bool>(any(vec3<bool>(global1.x, true, false)), global1.x, global2[_wgslsmith_index_u32(18289u, 9u)] >= global2[_wgslsmith_index_u32(var_0.a.e.x, 9u)], true)), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(24000u, var_0.c, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], var_0.c, 18281u)) > 4294967295u, true, false, !select(false, var_0.a.c, global1.x)), vec4<bool>(var_0.a.c, func_4(u_input.e, Struct_2(1341f), var_0.a.e, var_0.b.x).c, false, true)), select(true, global1.x, false));
    var var_1 = var_0.a.d.x;
    let var_2 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(1i), firstLeadingBit(2147483647i) ^ ~u_input.d, 18272i, 16740i), var_0.a.d, ~u_input.a);
}

